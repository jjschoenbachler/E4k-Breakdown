.class public Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$setCancelable;
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
    name = "setCancelable"
.end annotation


# static fields
.field public static final KEY:Ljava/lang/String; = "setCancelable"


# instance fields
.field final synthetic this$0:Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;


# direct methods
.method public constructor <init>(Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$setCancelable;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 2

    const/4 v0, 0x0

    .line 234
    :try_start_0
    aget-object p2, p2, v0

    invoke-virtual {p2}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result p2

    .line 235
    iget-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$setCancelable;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;

    invoke-static {v0}, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 237
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$setCancelable;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;

    invoke-static {p2}, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;)Landroid/app/ProgressDialog;

    move-result-object p2

    new-instance v0, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$CancelListener;

    iget-object v1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$setCancelable;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;

    invoke-direct {v0, v1, p1}, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$CancelListener;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;Lcom/adobe/fre/FREContext;)V

    invoke-virtual {p2, v0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "error"

    .line 240
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
