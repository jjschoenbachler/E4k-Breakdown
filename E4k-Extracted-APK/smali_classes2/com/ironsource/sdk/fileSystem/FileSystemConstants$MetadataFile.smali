.class public Lcom/ironsource/sdk/fileSystem/FileSystemConstants$MetadataFile;
.super Ljava/lang/Object;
.source "FileSystemConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/fileSystem/FileSystemConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MetadataFile"
.end annotation


# static fields
.field static final LAST_REFERENCED_TIME:Ljava/lang/String; = "lastReferencedTime"

.field static final METADATA_FILE_NAME:Ljava/lang/String; = "metadata.json"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
