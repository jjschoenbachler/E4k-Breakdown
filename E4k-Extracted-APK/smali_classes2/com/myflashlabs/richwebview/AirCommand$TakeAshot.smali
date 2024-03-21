.class Lcom/myflashlabs/richwebview/AirCommand$TakeAshot;
.super Landroid/os/AsyncTask;
.source "AirCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/myflashlabs/richwebview/AirCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TakeAshot"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private h:I

.field final synthetic this$0:Lcom/myflashlabs/richwebview/AirCommand;

.field private w:I

.field private webview:Lcom/myflashlabs/richwebview/MyWebView;


# direct methods
.method public constructor <init>(Lcom/myflashlabs/richwebview/AirCommand;I)V
    .locals 0

    .line 3157
    iput-object p1, p0, Lcom/myflashlabs/richwebview/AirCommand$TakeAshot;->this$0:Lcom/myflashlabs/richwebview/AirCommand;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3158
    invoke-static {p1, p2}, Lcom/myflashlabs/richwebview/AirCommand;->access$300(Lcom/myflashlabs/richwebview/AirCommand;I)Lcom/myflashlabs/richwebview/MyWebView;

    move-result-object p1

    iput-object p1, p0, Lcom/myflashlabs/richwebview/AirCommand$TakeAshot;->webview:Lcom/myflashlabs/richwebview/MyWebView;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 4

    const-wide/16 v0, 0x64

    .line 3167
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 3169
    iget-object p1, p0, Lcom/myflashlabs/richwebview/AirCommand$TakeAshot;->webview:Lcom/myflashlabs/richwebview/MyWebView;

    const/4 v0, 0x0

    .line 3170
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 3174
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 3169
    invoke-virtual {p1, v1, v0}, Lcom/myflashlabs/richwebview/MyWebView;->measure(II)V

    .line 3180
    iget-object p1, p0, Lcom/myflashlabs/richwebview/AirCommand$TakeAshot;->webview:Lcom/myflashlabs/richwebview/MyWebView;

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/myflashlabs/richwebview/AirCommand$TakeAshot;->w:I

    .line 3181
    iget-object p1, p0, Lcom/myflashlabs/richwebview/AirCommand$TakeAshot;->webview:Lcom/myflashlabs/richwebview/MyWebView;

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/myflashlabs/richwebview/AirCommand$TakeAshot;->h:I

    .line 3183
    iget-object p1, p0, Lcom/myflashlabs/richwebview/AirCommand$TakeAshot;->webview:Lcom/myflashlabs/richwebview/MyWebView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/myflashlabs/richwebview/MyWebView;->setDrawingCacheEnabled(Z)V

    .line 3184
    iget-object p1, p0, Lcom/myflashlabs/richwebview/AirCommand$TakeAshot;->webview:Lcom/myflashlabs/richwebview/MyWebView;

    invoke-virtual {p1}, Lcom/myflashlabs/richwebview/MyWebView;->buildDrawingCache()V

    .line 3185
    iget p1, p0, Lcom/myflashlabs/richwebview/AirCommand$TakeAshot;->w:I

    iget v0, p0, Lcom/myflashlabs/richwebview/AirCommand$TakeAshot;->h:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3186
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    .line 3187
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 3188
    iget-object v1, p0, Lcom/myflashlabs/richwebview/AirCommand$TakeAshot;->webview:Lcom/myflashlabs/richwebview/MyWebView;

    invoke-virtual {v1, v0}, Lcom/myflashlabs/richwebview/MyWebView;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3194
    iget-object v0, p0, Lcom/myflashlabs/richwebview/AirCommand$TakeAshot;->this$0:Lcom/myflashlabs/richwebview/AirCommand;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->access$200(Lcom/myflashlabs/richwebview/AirCommand;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3150
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand$TakeAshot;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 3205
    :try_start_0
    iget-object v0, p0, Lcom/myflashlabs/richwebview/AirCommand$TakeAshot;->this$0:Lcom/myflashlabs/richwebview/AirCommand;

    invoke-static {v0}, Lcom/myflashlabs/richwebview/AirCommand;->access$400(Lcom/myflashlabs/richwebview/AirCommand;)Ljava/io/File;

    move-result-object v0

    .line 3207
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3208
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3209
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 3211
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 3213
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "id"

    .line 3214
    iget-object v2, p0, Lcom/myflashlabs/richwebview/AirCommand$TakeAshot;->webview:Lcom/myflashlabs/richwebview/MyWebView;

    invoke-virtual {v2}, Lcom/myflashlabs/richwebview/MyWebView;->getId()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "file"

    .line 3215
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "width"

    .line 3216
    iget v1, p0, Lcom/myflashlabs/richwebview/AirCommand$TakeAshot;->w:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "height"

    .line 3217
    iget v1, p0, Lcom/myflashlabs/richwebview/AirCommand$TakeAshot;->h:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3219
    sget-object v0, Lcom/myflashlabs/richwebview/ExConst;->SCREENSHOT:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/myflashlabs/richwebview/MyExtension;->toDispatch(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3223
    iget-object v0, p0, Lcom/myflashlabs/richwebview/AirCommand$TakeAshot;->this$0:Lcom/myflashlabs/richwebview/AirCommand;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/myflashlabs/richwebview/AirCommand;->access$200(Lcom/myflashlabs/richwebview/AirCommand;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 3150
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/myflashlabs/richwebview/AirCommand$TakeAshot;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
