CREATE PROCEDURE [dbo].[spTemplate_getAll]
@numberOfResults INT,
@currentPageNumber INT = NULL


AS
DROP TABLE IF EXISTS #TempPagination
CREATE TABLE #TempPagination
(
    hasPreviousPage BIT,
    hasNextPage BIT,
	totalPages INT
);

BEGIN
DECLARE 

@totalRecords DECIMAL(7,3),
@skip DECIMAL(7,3),
@hasNextPage BIT,
@hasPreviousPage BIT,
@numberOfPages DECIMAL(7,3),
@page DECIMAL(7,3),
@totalNumberOfPages DECIMAL(7,3),
@reminderTotalRecordsRequestedNumberOfResults DECIMAL(7,3),
@divisor DECIMAL(7,2)
SET @divisor = 0.01;


SET @totalRecords = CONVERT(DECIMAL(7,3),(SELECT COUNT(TemplateId) FROM dbo.Templates))
SET @page = CONVERT(DECIMAL(7,3),@currentPageNumber)
SET @totalNumberOfPages = @totalRecords / @numberOfResults
SET @reminderTotalRecordsRequestedNumberOfResults = @totalRecords % @numberOfResults
SET @skip = (CONVERT(INT, @page) - 1) * @numberOfResults

IF (@page > 1) SET @hasPreviousPage = 1 ELSE SET @hasPreviousPage = 0
IF (@page <= @totalNumberOfPages) AND (@reminderTotalRecordsRequestedNumberOfResults >= 0) SET @hasNextPage = 1
IF (@page >= CEILING(@totalNumberOfPages)) SET @hasNextPage = 0

INSERT INTO #TempPagination VALUES(@hasPreviousPage, @hasNextPage, CEILING(@totalNumberOfPages))
	BEGIN
		SELECT t.TemplateId, t.Title, ((t.TemplatePrice * @divisor)) AS [TemplatePrice], t.[Description], t.CoverImgUrl, t.KeyWords, t.IndexUrl, CONVERT(INT, @totalRecords) AS NumberOfTemplates		
		FROM dbo.Templates t
		CROSS JOIN #TempPagination p
		ORDER BY Title
		OFFSET CONVERT(INT, @Skip) ROWS FETCH NEXT CONVERT(INT, @numberOfResults) ROWS ONLY		
	END
END
