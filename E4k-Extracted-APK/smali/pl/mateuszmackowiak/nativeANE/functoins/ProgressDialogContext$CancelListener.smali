.class Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$CancelListener;
.super Ljava/lang/Object;
.source "ProgressDialogContext.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field freContext:Lcom/adobe/fre/FREContext;

.field final synthetic this$0:Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;


# direct methods
.method public constructor <init>(Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;Lcom/adobe/fre/FREContext;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$CancelListener;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$CancelListener;->freContext:Lcom/adobe/fre/FREContext;

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .line 374
    iget-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$CancelListener;->freContext:Lcom/adobe/fre/FREContext;

    const-string v1, "nativeDialog_canceled"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
