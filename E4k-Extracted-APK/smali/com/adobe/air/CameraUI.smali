.class public final Lcom/adobe/air/CameraUI;
.super Ljava/lang/Object;
.source "CameraUI.java"

# interfaces
.implements Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;


# static fields
.field public static final ERROR_ACTIVITY_DESTROYED:I = 0x4

.field public static final ERROR_CAMERA_BUSY:I = 0x1

.field public static final ERROR_CAMERA_ERROR:I = 0x2

.field public static final ERROR_CAMERA_UNAVAILABLE:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "CameraUI"

.field private static final PHONE_STORAGE:Ljava/lang/String; = "phoneStorage"

.field public static final REQUESTED_MEDIA_TYPE_IMAGE:I = 0x1

.field public static final REQUESTED_MEDIA_TYPE_INVALID:I = 0x0

.field public static final REQUESTED_MEDIA_TYPE_VIDEO:I = 0x2

.field private static sCameraRollPath:Ljava/lang/String;

.field private static sCameraUI:Lcom/adobe/air/CameraUI;


# instance fields
.field private mCameraBusy:Z

.field private mImagePath:Ljava/lang/String;

.field private mLastClientId:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 99
    iput-wide v0, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/adobe/air/CameraUI;->mCameraBusy:Z

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    return-void
.end method

.method private getCameraRollDirectory(Landroid/app/Activity;)Ljava/lang/String;
    .locals 5

    .line 594
    sget-object v0, Lcom/adobe/air/CameraUI;->sCameraRollPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 596
    sget-object p1, Lcom/adobe/air/CameraUI;->sCameraRollPath:Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 607
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    .line 623
    :try_start_1
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "phoneStorage"

    invoke-static {v3}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    :catch_1
    :cond_1
    if-eqz v1, :cond_2

    .line 637
    :try_start_2
    invoke-direct {p0, v1, p1}, Lcom/adobe/air/CameraUI;->getFileFromUri(Landroid/net/Uri;Landroid/app/Activity;)Ljava/io/File;

    move-result-object v2

    .line 638
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/adobe/air/CameraUI;->sCameraRollPath:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 647
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, v1, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 649
    throw v2

    .line 647
    :catch_2
    :goto_1
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, v1, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 655
    :cond_2
    sget-object p1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 657
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 659
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/adobe/air/CameraUI;->sCameraRollPath:Ljava/lang/String;

    .line 665
    :cond_3
    :goto_2
    sget-object p1, Lcom/adobe/air/CameraUI;->sCameraRollPath:Ljava/lang/String;

    return-object p1
.end method

.method public static declared-synchronized getCameraUI()Lcom/adobe/air/CameraUI;
    .locals 3

    const-class v0, Lcom/adobe/air/CameraUI;

    monitor-enter v0

    .line 153
    :try_start_0
    sget-object v1, Lcom/adobe/air/CameraUI;->sCameraUI:Lcom/adobe/air/CameraUI;

    if-nez v1, :cond_0

    .line 156
    new-instance v1, Lcom/adobe/air/CameraUI;

    invoke-direct {v1}, Lcom/adobe/air/CameraUI;-><init>()V

    sput-object v1, Lcom/adobe/air/CameraUI;->sCameraUI:Lcom/adobe/air/CameraUI;

    .line 157
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v1

    sget-object v2, Lcom/adobe/air/CameraUI;->sCameraUI:Lcom/adobe/air/CameraUI;

    invoke-virtual {v1, v2}, Lcom/adobe/air/AndroidActivityWrapper;->addActivityResultListener(Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;)V

    .line 160
    :cond_0
    sget-object v1, Lcom/adobe/air/CameraUI;->sCameraUI:Lcom/adobe/air/CameraUI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 152
    monitor-exit v0

    throw v1
.end method

.method private getCursorFromUri(Landroid/net/Uri;Landroid/app/Activity;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 250
    :try_start_0
    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    move-object v5, p3

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 252
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 263
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    xor-int/2addr p2, v2

    and-int/2addr p2, v1

    if-eqz p2, :cond_1

    .line 265
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p1

    .line 257
    :cond_2
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    .line 263
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    xor-int/2addr p2, v2

    and-int/2addr p2, v1

    if-eqz p2, :cond_4

    .line 265
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0

    :catchall_0
    move-exception p2

    goto :goto_0

    :catchall_1
    move-exception p2

    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_5

    const/4 v1, 0x1

    .line 263
    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    xor-int/2addr p3, v2

    and-int/2addr p3, v1

    if-eqz p3, :cond_6

    .line 265
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 267
    :cond_6
    throw p2
.end method

.method private getFileFromUri(Landroid/net/Uri;Landroid/app/Activity;)Ljava/io/File;
    .locals 1

    const-string v0, "_data"

    .line 221
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-direct {p0, p1, p2, v0}, Lcom/adobe/air/CameraUI;->getCursorFromUri(Landroid/net/Uri;Landroid/app/Activity;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    const-string p2, "_data"

    .line 229
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    .line 230
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 231
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 239
    throw p2

    .line 237
    :catch_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private native nativeOnCameraCancel(J)V
.end method

.method private native nativeOnCameraError(JI)V
.end method

.method private native nativeOnCameraResult(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private onCameraCancel()V
    .locals 5

    .line 121
    iget-wide v0, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 123
    iget-wide v0, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/CameraUI;->nativeOnCameraCancel(J)V

    .line 125
    iput-wide v2, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    :cond_0
    return-void
.end method

.method private onCameraError(I)V
    .locals 5

    .line 111
    iget-wide v0, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 113
    iget-wide v0, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/air/CameraUI;->nativeOnCameraError(JI)V

    .line 115
    iput-wide v2, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    :cond_0
    return-void
.end method

.method private onCameraResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 131
    iget-wide v0, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 133
    iget-wide v6, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    move-object v5, p0

    move-object v8, p1

    move-object v9, p2

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/adobe/air/CameraUI;->nativeOnCameraResult(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iput-wide v2, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    :cond_0
    return-void
.end method

.method private processImageSuccessResult()V
    .locals 8

    .line 272
    new-instance v0, Ljava/lang/String;

    const-string v1, "image"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 273
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 275
    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x0

    .line 280
    :try_start_0
    new-instance v5, Landroid/media/ExifInterface;

    iget-object v6, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 282
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v4

    :goto_0
    const-string v6, "Orientation"

    .line 293
    invoke-virtual {v5, v6}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 294
    iget-object v6, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 295
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v6, v5}, Lcom/adobe/air/CameraUI;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 298
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    if-eqz v5, :cond_0

    .line 300
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v5, v1, v7, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 301
    :cond_0
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 302
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 304
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 309
    :goto_1
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/air/AndroidActivityWrapper;->getDefaultContext()Landroid/content/Context;

    move-result-object v1

    .line 308
    invoke-static {v1, v3, v4, v4}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 315
    iget-object v1, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lcom/adobe/air/CameraUI;->onCameraResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private processVideoSuccessResult(Landroid/content/Intent;)V
    .locals 6

    const-string v0, "_data"

    const-string v1, "mime_type"

    const-string v2, "_display_name"

    .line 368
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 374
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 375
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 373
    invoke-direct {p0, p1, v1, v0}, Lcom/adobe/air/CameraUI;->getCursorFromUri(Landroid/net/Uri;Landroid/app/Activity;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    :try_start_0
    const-string v1, "_data"

    .line 383
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "mime_type"

    .line 384
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "_display_name"

    .line 385
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 386
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 390
    :try_start_1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 391
    invoke-direct {p0, v2}, Lcom/adobe/air/CameraUI;->toMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    .line 396
    :try_start_2
    new-instance v4, Ljava/lang/String;

    const-string v5, "video"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    goto :goto_0

    :catch_0
    move-object v3, v0

    goto :goto_1

    .line 399
    :cond_0
    :goto_0
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_1

    .line 402
    :try_start_3
    new-instance v0, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :cond_1
    move-object v0, v3

    goto :goto_2

    :catch_1
    move-object v2, v0

    move-object v3, v2

    :catch_2
    :goto_1
    move-object v0, v1

    goto :goto_3

    :cond_2
    move-object v2, v0

    .line 410
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    move-object v3, v0

    move-object v0, v1

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 412
    throw v0

    :catch_3
    move-object v2, v0

    move-object v3, v2

    .line 410
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :cond_3
    move-object v2, v0

    move-object v3, v2

    :goto_4
    if-eqz v2, :cond_4

    const-string p1, "image"

    .line 417
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    const-string p1, "video"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 420
    :cond_5
    invoke-direct {p0, v0, v2, v3}, Lcom/adobe/air/CameraUI;->onCameraResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    const/4 p1, 0x2

    .line 423
    invoke-direct {p0, p1}, Lcom/adobe/air/CameraUI;->onCameraError(I)V

    :goto_5
    return-void
.end method

.method private stillPictureWork()I
    .locals 10

    .line 672
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    return v0

    .line 679
    :cond_0
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/air/AndroidActivityWrapper;->GetTargetSdkVersion()I

    move-result v1

    const/4 v2, 0x2

    const/16 v3, 0x17

    if-lt v1, v3, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v3, :cond_2

    :cond_1
    invoke-direct {p0, v0}, Lcom/adobe/air/CameraUI;->getCameraRollDirectory(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return v2

    .line 687
    :cond_2
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 688
    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 692
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/air/AndroidActivityWrapper;->GetTargetSdkVersion()I

    move-result v4

    const/4 v5, 0x0

    if-lt v4, v3, :cond_4

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v3, :cond_4

    .line 694
    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "Pictures"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 695
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 697
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    :cond_3
    :try_start_0
    const-string v6, ".jpg"

    .line 701
    invoke-static {v1, v6, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 706
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v5

    move-object v4, v1

    goto :goto_0

    .line 716
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/adobe/air/CameraUI;->getCameraRollDirectory(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 717
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 719
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v4, v1

    move-object v1, v5

    goto :goto_0

    :cond_5
    move-object v9, v4

    move-object v4, v1

    move-object v1, v9

    :goto_0
    if-nez v1, :cond_6

    return v2

    :cond_6
    const/4 v6, 0x3

    .line 734
    :try_start_1
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 736
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/adobe/air/AndroidActivityWrapper;->GetTargetSdkVersion()I

    move-result v8

    if-lt v8, v3, :cond_7

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    if-lt v8, v3, :cond_7

    .line 740
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 741
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".provider"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 740
    invoke-static {v0, v3, v1}, Lcom/adobe/air/CameraUIProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    :catch_1
    move-exception v1

    .line 745
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v5

    :goto_1
    const-string v3, "output"

    .line 747
    invoke-virtual {v7, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 748
    invoke-virtual {v7, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_2

    :cond_7
    const-string v3, "output"

    .line 752
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v7, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 755
    :goto_2
    invoke-virtual {v0, v7, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v2, 0x0

    move-object v5, v4

    goto :goto_3

    :catch_2
    const/4 v2, 0x3

    .line 767
    :catch_3
    :goto_3
    iput-object v5, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    return v2
.end method

.method private toMediaType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "image/"

    .line 207
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    new-instance p1, Ljava/lang/String;

    const-string v0, "image"

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "video/"

    .line 210
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 212
    new-instance p1, Ljava/lang/String;

    const-string v0, "video"

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private videoCaptureWork()I
    .locals 5

    .line 568
    :try_start_0
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 577
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.extra.videoQuality"

    .line 579
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 582
    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    const/4 v1, 0x3

    :goto_0
    return v1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public launch(JI)V
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 518
    :cond_0
    iget-boolean v2, p0, Lcom/adobe/air/CameraUI;->mCameraBusy:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 522
    invoke-direct {p0, p1, p2, v3}, Lcom/adobe/air/CameraUI;->nativeOnCameraError(JI)V

    return-void

    .line 528
    :cond_1
    iget-wide v4, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    cmp-long v2, v4, v0

    if-eqz v2, :cond_2

    .line 531
    invoke-direct {p0, v3}, Lcom/adobe/air/CameraUI;->onCameraError(I)V

    .line 534
    :cond_2
    iput-wide p1, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    .line 536
    iput-boolean v3, p0, Lcom/adobe/air/CameraUI;->mCameraBusy:Z

    packed-switch p3, :pswitch_data_0

    const/4 p1, 0x3

    goto :goto_0

    .line 545
    :pswitch_0
    invoke-direct {p0}, Lcom/adobe/air/CameraUI;->videoCaptureWork()I

    move-result p1

    goto :goto_0

    .line 542
    :pswitch_1
    invoke-direct {p0}, Lcom/adobe/air/CameraUI;->stillPictureWork()I

    move-result p1

    :goto_0
    if-eqz p1, :cond_3

    const/4 p2, 0x0

    .line 557
    iput-boolean p2, p0, Lcom/adobe/air/CameraUI;->mCameraBusy:Z

    .line 558
    invoke-direct {p0, p1}, Lcom/adobe/air/CameraUI;->onCameraError(I)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 v0, 0x4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 448
    iput-boolean v2, p0, Lcom/adobe/air/CameraUI;->mCameraBusy:Z

    .line 451
    iget-wide v2, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    .line 486
    iget-object p1, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 488
    iput-object v2, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    goto :goto_0

    .line 479
    :pswitch_0
    iget-object p1, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 481
    iput-object v2, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    .line 483
    :cond_2
    invoke-direct {p0}, Lcom/adobe/air/CameraUI;->onCameraCancel()V

    goto :goto_1

    :pswitch_1
    if-ne p1, v1, :cond_4

    .line 464
    iget-object p1, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 466
    invoke-direct {p0}, Lcom/adobe/air/CameraUI;->processImageSuccessResult()V

    .line 467
    iput-object v2, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    goto :goto_1

    .line 471
    :cond_3
    invoke-direct {p0}, Lcom/adobe/air/CameraUI;->onCameraCancel()V

    goto :goto_1

    :cond_4
    if-ne p1, v0, :cond_6

    .line 475
    invoke-direct {p0, p3}, Lcom/adobe/air/CameraUI;->processVideoSuccessResult(Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p1, 0x2

    .line 490
    invoke-direct {p0, p1}, Lcom/adobe/air/CameraUI;->onCameraError(I)V

    :cond_6
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    .line 320
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, -0x3d4c0000    # -90.0f

    const/high16 v1, 0x42b40000    # 90.0f

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    packed-switch p2, :pswitch_data_0

    return-object p1

    .line 346
    :pswitch_0
    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 342
    :pswitch_1
    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 343
    invoke-virtual {v5, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 339
    :pswitch_2
    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 335
    :pswitch_3
    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 336
    invoke-virtual {v5, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 331
    :pswitch_4
    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 332
    invoke-virtual {v5, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 328
    :pswitch_5
    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 325
    :pswitch_6
    invoke-virtual {v5, v4, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 352
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 353
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 357
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1

    :pswitch_7
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public unregisterCallbacks(J)V
    .locals 3

    .line 191
    iget-wide v0, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const-wide/16 p1, 0x0

    .line 193
    iput-wide p1, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    :cond_0
    return-void
.end method
