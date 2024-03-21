.class public final Lcom/adobe/air/ResourceFileManager;
.super Ljava/lang/Object;
.source "ResourceFileManager.java"


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mAppResources:Landroid/content/res/Resources;

.field private mResourceIdMap:Lcom/adobe/air/ResourceIdMap;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/adobe/air/ResourceFileManager;->mResourceIdMap:Lcom/adobe/air/ResourceIdMap;

    .line 45
    iput-object p1, p0, Lcom/adobe/air/ResourceFileManager;->mAppContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/adobe/air/ResourceFileManager;->mAppResources:Landroid/content/res/Resources;

    .line 50
    :try_start_0
    iget-object p1, p0, Lcom/adobe/air/ResourceFileManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adobe/air/ResourceFileManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".R"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 52
    new-instance v0, Lcom/adobe/air/ResourceIdMap;

    invoke-direct {v0, p1}, Lcom/adobe/air/ResourceIdMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/adobe/air/ResourceFileManager;->mResourceIdMap:Lcom/adobe/air/ResourceIdMap;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private remapSpecialFileNames(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "ss.cfg"

    .line 131
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ss.sgn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mms.cfg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    :goto_0
    const/16 v0, 0x2e

    const/16 v1, 0x5f

    .line 133
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private resExists(Ljava/lang/String;)Z
    .locals 2

    .line 145
    invoke-direct {p0, p1}, Lcom/adobe/air/ResourceFileManager;->remapSpecialFileNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "raw."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/adobe/air/ResourceFileManager;->lookupResId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/adobe/air/ResourceFileManager;->resExists(I)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public GetAssetFileDescriptor(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 2

    .line 169
    :try_start_0
    invoke-direct {p0, p1}, Lcom/adobe/air/ResourceFileManager;->remapSpecialFileNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/adobe/air/ResourceFileManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/raw/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 174
    iget-object v0, p0, Lcom/adobe/air/ResourceFileManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "r"

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public extractResource(ILjava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-virtual {p0, p1}, Lcom/adobe/air/ResourceFileManager;->getStream(I)Ljava/io/InputStream;

    move-result-object p1

    .line 102
    invoke-static {p1, p2}, Lcom/adobe/air/utils/Utils;->writeOut(Ljava/io/InputStream;Ljava/io/File;)V

    .line 103
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getFileStreamFromRawRes(I)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/adobe/air/ResourceFileManager;->mAppResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public getResourceEntryName(I)Ljava/lang/String;
    .locals 1

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/ResourceFileManager;->mAppResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "null"

    return-object p1
.end method

.method public getResourceName(I)Ljava/lang/String;
    .locals 1

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/ResourceFileManager;->mAppResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "null"

    return-object p1
.end method

.method public getStream(I)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/adobe/air/ResourceFileManager;->mAppResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public lookupResId(Ljava/lang/String;)I
    .locals 1

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/ResourceFileManager;->mResourceIdMap:Lcom/adobe/air/ResourceIdMap;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/adobe/air/ResourceFileManager;->mResourceIdMap:Lcom/adobe/air/ResourceIdMap;

    invoke-virtual {v0, p1}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public readFileFromRawRes(I)Ljava/lang/String;
    .locals 3

    .line 76
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 79
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/adobe/air/ResourceFileManager;->getFileStreamFromRawRes(I)Ljava/io/InputStream;

    move-result-object p1

    .line 80
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 81
    invoke-static {p1, v1}, Lcom/adobe/air/utils/Utils;->writeThrough(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 82
    new-instance p1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {p1, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public resExists(I)Z
    .locals 2

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    return v0

    .line 111
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/adobe/air/ResourceFileManager;->mAppResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    return v0
.end method
