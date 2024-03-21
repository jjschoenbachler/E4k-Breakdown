.class public Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$isShowing;
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
    name = "isShowing"
.end annotation


# static fields
.field public static final KEY:Ljava/lang/String; = "isShowing"


# instance fields
.field final synthetic this$0:Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;


# direct methods
.method public constructor <init>(Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$isShowing;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 2

    .line 198
    :try_start_0
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$isShowing;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;

    invoke-static {p2}, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;)Landroid/app/ProgressDialog;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$isShowing;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;

    invoke-static {p2}, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;)Landroid/app/ProgressDialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 199
    invoke-static {p2}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;

    move-result-object p2

    return-object p2

    :cond_0
    const/4 p2, 0x0

    .line 201
    invoke-static {p2}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    const-string v0, "error"

    .line 203
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method
