.class public Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$updateTitle;
.super Ljava/lang/Object;
.source "ProgressDialogContext.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "updateTitle"
.end annotation


# static fields
.field public static final KEY:Ljava/lang/String; = "updateTitle"


# instance fields
.field final synthetic this$0:Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;


# direct methods
.method public constructor <init>(Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$updateTitle;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 2

    const/4 v0, 0x0

    .line 254
    :try_start_0
    aget-object p2, p2, v0

    invoke-virtual {p2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object p2

    .line 256
    iget-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$updateTitle;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;

    invoke-static {v0}, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "error"

    .line 258
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
