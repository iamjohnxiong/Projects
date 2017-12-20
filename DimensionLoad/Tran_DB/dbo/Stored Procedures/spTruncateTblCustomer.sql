CREATE PROCEDURE [dbo].[spTruncateTblCustomer]
/* =============================================
-- Author:		John Xiong
-- Create date: 20171220
-- Description:	Truncate dbo.tblCustomer table
--

Modified     By             Comment
----------   -------------  ------------------------------------------

-- =============================================
*/
AS
BEGIN

    TRUNCATE TABLE [dbo].[tblCustomer];

END
