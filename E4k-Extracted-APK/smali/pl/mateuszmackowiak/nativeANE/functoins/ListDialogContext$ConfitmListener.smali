.class Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$ConfitmListener;
.super Ljava/lang/Object;
.source "ListDialogContext.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfitmListener"
.end annotation


# instance fields
.field private cancelable:Z

.field freContext:Lcom/adobe/fre/FREContext;

.field private index:I


# direct methods
.method constructor <init>(Lcom/adobe/fre/FREContext;IZ)V
    .locals 0

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$ConfitmListener;->freContext:Lcom/adobe/fre/FREContext;

    .line 287
    iput-boolean p3, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$ConfitmListener;->cancelable:Z

    .line 288
    iput p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$ConfitmListener;->index:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p2, "nativeDialog_closed"

    .line 295
    iget-boolean v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$ConfitmListener;->cancelable:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$ConfitmListener;->index:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string p2, "nativeDialog_canceled"

    .line 299
    :cond_0
    iget-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$ConfitmListener;->freContext:Lcom/adobe/fre/FREContext;

    iget v1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$ConfitmListener;->index:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
