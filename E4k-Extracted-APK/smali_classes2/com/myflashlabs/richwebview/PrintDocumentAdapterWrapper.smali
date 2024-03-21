.class Lcom/myflashlabs/richwebview/PrintDocumentAdapterWrapper;
.super Landroid/print/PrintDocumentAdapter;
.source "PrintDocumentAdapterWrapper.java"


# instance fields
.field final delegate:Landroid/print/PrintDocumentAdapter;


# direct methods
.method constructor <init>(Landroid/print/PrintDocumentAdapter;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/myflashlabs/richwebview/PrintDocumentAdapterWrapper;->delegate:Landroid/print/PrintDocumentAdapter;

    return-void
.end method

.method private toTrace(Ljava/lang/String;)V
    .locals 2

    .line 42
    sget-object v0, Lcom/myflashlabs/richwebview/ExConst;->ANE_NAME:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/myflashlab/dependency/overrideAir/MyExtension;->toTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/myflashlabs/richwebview/PrintDocumentAdapterWrapper;->delegate:Landroid/print/PrintDocumentAdapter;

    invoke-virtual {v0}, Landroid/print/PrintDocumentAdapter;->onFinish()V

    const-string v0, "PrintDocumentAdapter onFinish"

    .line 25
    invoke-direct {p0, v0}, Lcom/myflashlabs/richwebview/PrintDocumentAdapterWrapper;->toTrace(Ljava/lang/String;)V

    return-void
.end method

.method public onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 0

    return-void
.end method
