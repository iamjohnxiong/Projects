CREATE PROCEDURE [dbo].[spTruncateStgCustomer]
/* =============================================
-- Author:		John Xiong
-- Create date: 20171220
-- Description:	Truncate dbo.stgCustomer table
--

Modified     By             Comment
----------   -------------  ------------------------------------------

-- =============================================
*/
AS
BEGIN

    TRUNCATE TABLE [dbo].[stgCustomer];

END
