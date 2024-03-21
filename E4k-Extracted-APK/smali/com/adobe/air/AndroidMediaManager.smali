.class public Lcom/adobe/air/AndroidMediaManager;
.super Ljava/lang/Object;
.source "AndroidMediaManager.java"


# static fields
.field public static final ERROR_ACTIVITY_DESTROYED:I = 0x2

.field public static final ERROR_IMAGE_PICKER_NOT_FOUND:I = 0x1

.field private static MediaManagerObjectPointer:J = 0x0L

.field private static final PHONE_STORAGE:Ljava/lang/String; = "phoneStorage"


# instance fields
.field private mActivityResultCB:Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;

.field private mCallbacksRegistered:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/adobe/air/AndroidMediaManager;->mCallbacksRegistered:Z

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/adobe/air/AndroidMediaManager;->mActivityResultCB:Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;

    const-wide/16 v0, 0x0

    .line 76
    sput-wide v0, Lcom/adobe/air/AndroidMediaManager;->MediaManagerObjectPointer:J

    return-void
.end method

.method public static AddImage(Landroid/app/Application;Landroid/graphics/Bitmap;Z)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 156
    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 p0, 0x0

    .line 165
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMG"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 166
    invoke-static {v2, p1, v3, p0}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v3, p0

    :goto_0
    if-nez v3, :cond_0

    const-string v3, "phoneStorage"

    .line 176
    invoke-static {v3, v2, p1, p2}, Lcom/adobe/air/AndroidMediaManager;->SaveImage(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Z)Ljava/lang/String;

    move-result-object v3

    :cond_0
    if-eqz v3, :cond_1

    :try_start_1
    const-string p1, "_data"

    .line 181
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    .line 182
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "_data"

    .line 187
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    .line 188
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 189
    new-array v2, v0, [Ljava/lang/String;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    .line 190
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adobe/air/AndroidActivityWrapper;->getDefaultContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2, p0, p0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :catch_1
    :cond_2
    :goto_1
    return v0
.end method

.method private static SaveImage(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Z)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x0

    .line 215
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    if-eqz p3, :cond_0

    const-string p3, "mime_type"

    const-string v2, "image/jpeg"

    .line 217
    invoke-virtual {v1, p3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p3, "mime_type"

    const-string v2, "image/png"

    .line 219
    invoke-virtual {v1, p3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :goto_0
    new-instance p3, Ljava/util/Date;

    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    const-string v2, "datetaken"

    .line 222
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "date_added"

    .line 223
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 226
    invoke-static {p0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1, p3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz p3, :cond_2

    .line 231
    :try_start_1
    invoke-virtual {p1, p3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 234
    :try_start_2
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {p2, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 237
    invoke-static {p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    const/high16 v9, 0x43a00000    # 320.0f

    const/high16 v10, 0x43700000    # 240.0f

    const/4 v11, 0x1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-wide v7, v2

    .line 238
    invoke-static/range {v4 .. v11}, Lcom/adobe/air/AndroidMediaManager;->SaveThumbnail(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/graphics/Bitmap;JFFI)Landroid/graphics/Bitmap;

    move-result-object v6

    const/high16 v9, 0x42480000    # 50.0f

    const/high16 v10, 0x42480000    # 50.0f

    const/4 v11, 0x3

    move-object v4, p0

    move-object v5, p1

    move-wide v7, v2

    .line 239
    invoke-static/range {v4 .. v11}, Lcom/adobe/air/AndroidMediaManager;->SaveThumbnail(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/graphics/Bitmap;JFFI)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 252
    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    nop

    if-eqz p3, :cond_1

    .line 246
    :try_start_4
    invoke-virtual {p1, p3, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object p3, v0

    goto :goto_1

    .line 252
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 253
    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    nop

    goto :goto_3

    :catch_2
    move-object p3, v0

    :goto_3
    if-eqz p3, :cond_2

    .line 263
    invoke-virtual {p1, p3, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-object p3, v0

    :cond_2
    :goto_4
    if-eqz p3, :cond_3

    .line 269
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method private static final SaveThumbnail(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/graphics/Bitmap;JFFI)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 279
    :cond_0
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 284
    :try_start_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p5, v1

    .line 285
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p6, v1

    .line 287
    invoke-virtual {v6, p5, p6}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 290
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 291
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p2

    .line 289
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 300
    new-instance p5, Landroid/content/ContentValues;

    const/4 p6, 0x4

    invoke-direct {p5, p6}, Landroid/content/ContentValues;-><init>(I)V

    const-string p6, "kind"

    .line 301
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    invoke-virtual {p5, p6, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p6, "image_id"

    long-to-int p3, p3

    .line 302
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p5, p6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "height"

    .line 303
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p5, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "width"

    .line 304
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p5, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 309
    :try_start_1
    invoke-static {p0}, Landroid/provider/MediaStore$Images$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0, p5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p0, :cond_1

    .line 312
    :try_start_2
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p3

    .line 313
    sget-object p4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p5, 0x64

    invoke-virtual {p2, p4, p5, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 314
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_0

    :catch_1
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 322
    invoke-virtual {p1, p0, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-object p0, v0

    :cond_1
    :goto_1
    if-eqz p0, :cond_2

    return-object p2

    :cond_2
    return-object v0

    :catch_2
    return-object v0
.end method

.method static synthetic access$000()J
    .locals 2

    .line 41
    sget-wide v0, Lcom/adobe/air/AndroidMediaManager;->MediaManagerObjectPointer:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/adobe/air/AndroidMediaManager;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/adobe/air/AndroidMediaManager;->mCallbacksRegistered:Z

    return p0
.end method

.method private doCallbackRegistration(Z)V
    .locals 1

    .line 98
    iput-boolean p1, p0, Lcom/adobe/air/AndroidMediaManager;->mCallbacksRegistered:Z

    if-eqz p1, :cond_1

    .line 101
    iget-object p1, p0, Lcom/adobe/air/AndroidMediaManager;->mActivityResultCB:Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;

    if-nez p1, :cond_0

    .line 103
    new-instance p1, Lcom/adobe/air/AndroidMediaManager$1;

    invoke-direct {p1, p0}, Lcom/adobe/air/AndroidMediaManager$1;-><init>(Lcom/adobe/air/AndroidMediaManager;)V

    iput-object p1, p0, Lcom/adobe/air/AndroidMediaManager;->mActivityResultCB:Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;

    .line 138
    :cond_0
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object p1

    iget-object v0, p0, Lcom/adobe/air/AndroidMediaManager;->mActivityResultCB:Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;

    invoke-virtual {p1, v0}, Lcom/adobe/air/AndroidActivityWrapper;->addActivityResultListener(Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;)V

    goto :goto_0

    .line 141
    :cond_1
    iget-object p1, p0, Lcom/adobe/air/AndroidMediaManager;->mActivityResultCB:Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;

    if-eqz p1, :cond_2

    .line 143
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object p1

    iget-object v0, p0, Lcom/adobe/air/AndroidMediaManager;->mActivityResultCB:Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;

    invoke-virtual {p1, v0}, Lcom/adobe/air/AndroidActivityWrapper;->removeActivityResultListener(Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;)V

    const/4 p1, 0x0

    .line 144
    iput-object p1, p0, Lcom/adobe/air/AndroidMediaManager;->mActivityResultCB:Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;

    :cond_2
    :goto_0
    return-void
.end method

.method private static rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    .line 466
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 467
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 468
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 469
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1
.end method


# virtual methods
.method public BrowseImage(J)I
    .locals 4

    .line 341
    :try_start_0
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    .line 342
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "image/*"

    .line 343
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    .line 344
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    .line 346
    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    const/4 v3, 0x1

    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 357
    invoke-virtual {p0}, Lcom/adobe/air/AndroidMediaManager;->registerCallbacks()V

    .line 358
    sput-wide p1, Lcom/adobe/air/AndroidMediaManager;->MediaManagerObjectPointer:J

    :cond_1
    return v3
.end method

.method public onBrowseImageResult(ILandroid/content/Intent;Landroid/app/Activity;)V
    .locals 17

    move/from16 v0, p1

    if-nez v0, :cond_0

    .line 374
    sget-wide v1, Lcom/adobe/air/AndroidMediaManager;->MediaManagerObjectPointer:J

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/adobe/air/AndroidMediaManager;->useImagePickerData(JZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    :try_start_0
    const-string v0, "_data"

    const-string v1, "mime_type"

    const-string v2, "_display_name"

    .line 383
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v5

    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p3

    invoke-virtual/range {v3 .. v8}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    .line 391
    sget-wide v2, Lcom/adobe/air/AndroidMediaManager;->MediaManagerObjectPointer:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/adobe/air/AndroidMediaManager;->useImagePickerData(JZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v1, "_data"

    .line 395
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "_display_name"

    .line 396
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 397
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 411
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 412
    new-instance v9, Ljava/lang/String;

    const-string v1, "image"

    invoke-direct {v9, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 413
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v8, :cond_8

    const-string v0, "http"

    .line 415
    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 423
    :cond_2
    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    .line 426
    :try_start_1
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, v8}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    :catch_0
    const-string v2, "Orientation"

    const/4 v3, 0x1

    .line 430
    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    const/4 v2, 0x6

    if-eq v1, v2, :cond_4

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    goto :goto_0

    :cond_3
    const/16 v2, 0x10e

    .line 440
    invoke-static {v0, v2}, Lcom/adobe/air/AndroidMediaManager;->rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/16 v2, 0x5a

    .line 434
    invoke-static {v0, v2}, Lcom/adobe/air/AndroidMediaManager;->rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/16 v2, 0xb4

    .line 437
    invoke-static {v0, v2}, Lcom/adobe/air/AndroidMediaManager;->rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    if-eq v1, v3, :cond_7

    .line 445
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 448
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    if-eqz v0, :cond_6

    .line 450
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 451
    :cond_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 452
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 459
    :catch_1
    :cond_7
    sget-wide v4, Lcom/adobe/air/AndroidMediaManager;->MediaManagerObjectPointer:J

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/adobe/air/AndroidMediaManager;->useImagePickerData(JZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 419
    :cond_8
    :goto_1
    sget-wide v12, Lcom/adobe/air/AndroidMediaManager;->MediaManagerObjectPointer:J

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v11, p0

    invoke-virtual/range {v11 .. v16}, Lcom/adobe/air/AndroidMediaManager;->useStreamData(JZZLjava/lang/String;)V

    goto :goto_2

    .line 407
    :catch_2
    sget-wide v1, Lcom/adobe/air/AndroidMediaManager;->MediaManagerObjectPointer:J

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/adobe/air/AndroidMediaManager;->useImagePickerData(JZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 402
    :catch_3
    sget-wide v9, Lcom/adobe/air/AndroidMediaManager;->MediaManagerObjectPointer:J

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v15}, Lcom/adobe/air/AndroidMediaManager;->useImagePickerData(JZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    :goto_2
    return-void
.end method

.method public registerCallbacks()V
    .locals 1

    const/4 v0, 0x1

    .line 84
    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidMediaManager;->doCallbackRegistration(Z)V

    return-void
.end method

.method public unregisterCallbacks()V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidMediaManager;->doCallbackRegistration(Z)V

    return-void
.end method

.method public native useImagePickerData(JZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native useStreamData(JZZLjava/lang/String;)V
.end method
