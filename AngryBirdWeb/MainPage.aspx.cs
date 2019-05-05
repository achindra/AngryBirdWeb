using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.WindowsAzure.Storage.Auth;
using Microsoft.WindowsAzure.Storage.Blob;

namespace AngryBirdWeb
{
    public partial class MainPage : System.Web.UI.Page
    {
        string storageKey = "VJtMZsroYNlN873/mIVhS8WOwk6iSveOfylhpiEBRuhvUT6GlMEWmshVCHJIGUQcvo3OHf49ZjEmyv3CObEdSA==";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            if (!FileUpload1.HasFile ||
               !(FileUpload1.FileName.EndsWith("jpg") ||
                 FileUpload1.FileName.EndsWith("jpeg") ||
                 FileUpload1.FileName.EndsWith("png")))
            {
                Label1.Text = "A file of type JPEG/PNG is required";
            }
            else
            {
                string fileName = System.Guid.NewGuid() + "." + FileUpload1.FileName.Split('.').Last<string>();

                CloudBlobContainer blobContainer = new CloudBlobContainer(
                    new Uri("https://angrybirdsa.blob.core.windows.net/originals"),
                    new StorageCredentials("angrybirdsa", storageKey));
                if (blobContainer.CreateIfNotExists())
                {
                    blobContainer.SetPermissions(new BlobContainerPermissions { PublicAccess = BlobContainerPublicAccessType.Blob });
                }

                CloudBlockBlob blockBlob = blobContainer.GetBlockBlobReference(fileName);
                blockBlob.DeleteIfExists();

                using (FileUpload1.PostedFile.InputStream)
                {
                    blockBlob.UploadFromStream(FileUpload1.PostedFile.InputStream);
                }

                Label1.Text = "File Uploaded.";
            }
        }
    }
}