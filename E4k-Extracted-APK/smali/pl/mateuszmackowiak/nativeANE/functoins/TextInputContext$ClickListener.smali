.class Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$ClickListener;
.super Ljava/lang/Object;
.source "TextInputContext.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickListener"
.end annotation


# instance fields
.field private dlg:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInputDialog;

.field freContext:Lcom/adobe/fre/FREContext;

.field private index:I

.field final synthetic this$0:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;


# direct methods
.method constructor <init>(Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInputDialog;Lcom/adobe/fre/FREContext;I)V
    .locals 0

    .line 476
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$ClickListener;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    iput-object p3, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$ClickListener;->freContext:Lcom/adobe/fre/FREContext;

    .line 478
    iput-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$ClickListener;->dlg:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInputDialog;

    .line 479
    iput p4, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$ClickListener;->index:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 486
    :try_start_0
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$ClickListener;->freContext:Lcom/adobe/fre/FREContext;

    invoke-virtual {p2}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string v0, "input_method"

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 487
    instance-of v0, p2, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_4

    .line 488
    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 489
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 490
    iget-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$ClickListener;->dlg:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInputDialog;

    invoke-virtual {v0}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInputDialog;->getTextInputs()[Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInput;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 492
    invoke-virtual {v4}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInput;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p2, v4, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 497
    :cond_1
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$ClickListener;->dlg:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInputDialog;

    invoke-virtual {p2}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInputDialog;->getTextInputs()[Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInput;

    move-result-object p2

    array-length v0, p2

    :goto_1
    if-ge v1, v0, :cond_3

    aget-object v2, p2, v1

    if-eqz v2, :cond_2

    .line 499
    invoke-virtual {v2}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInput;->removeWacher()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 503
    :cond_3
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$ClickListener;->freContext:Lcom/adobe/fre/FREContext;

    const-string v0, "nativeDialog_closed"

    iget v1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$ClickListener;->index:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 507
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$ClickListener;->freContext:Lcom/adobe/fre/FREContext;

    const-string v0, "error"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method
