.class public Lcom/ironsource/sdk/fileSystem/FileSystemConstants$Errors;
.super Ljava/lang/Object;
.source "FileSystemConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/fileSystem/FileSystemConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Errors"
.end annotation


# static fields
.field static final DELETE_FILE_FAILED:Ljava/lang/String; = "Failed to delete file"

.field static final DELETE_FOLDER_FAILED:Ljava/lang/String; = "Failed to delete folder"

.field static final FILE_NOT_EXIST:Ljava/lang/String; = "File does not exist"

.field static final FOLDER_NOT_EXIST:Ljava/lang/String; = "Folder does not exist"

.field static final MISSING_ATTRIBUTES_TO_UPDATE:Ljava/lang/String; = "Missing attributes to update"

.field public static final MISSING_PARAMS_FOR_FILE:Ljava/lang/String; = "Missing params for file"

.field public static final MISSING_PARAMS_FOR_FOLDER:Ljava/lang/String; = "Missing params for folder"

.field static final UPDATE_ATTRIBUTE_FAILED:Ljava/lang/String; = "Failed to update attribute"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
