.class public Lcom/ironsource/sdk/fileSystem/FileSystemConstants$FileSystemAPI;
.super Ljava/lang/Object;
.source "FileSystemConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/fileSystem/FileSystemConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileSystemAPI"
.end annotation


# static fields
.field public static final DELETE_FILE:Ljava/lang/String; = "deleteFile"

.field public static final DELETE_FOLDER:Ljava/lang/String; = "deleteFolder"

.field public static final GET_FILES:Ljava/lang/String; = "getFiles"

.field public static final GET_TOTAL_SIZE_OF_FILES:Ljava/lang/String; = "getTotalSizeOfFiles"

.field public static final SAVE_FILE:Ljava/lang/String; = "saveFile"

.field public static final UPDATE_ATTRIBUTES_OF_FILE:Ljava/lang/String; = "updateAttributesOfFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
