.class Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$ClickListener;
.super Ljava/lang/Object;
.source "NativePickerDialogContext.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickListener"
.end annotation


# instance fields
.field frecontext:Lcom/adobe/fre/FREContext;

.field private index:I

.field final synthetic this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;


# direct methods
.method constructor <init>(Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;Lcom/adobe/fre/FREContext;I)V
    .locals 0

    .line 274
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$ClickListener;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput p3, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$ClickListener;->index:I

    .line 276
    iput-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$ClickListener;->frecontext:Lcom/adobe/fre/FREContext;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 283
    :try_start_0
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$ClickListener;->frecontext:Lcom/adobe/fre/FREContext;

    const-string v0, "nativeDialog_closed"

    iget v1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$ClickListener;->index:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 286
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$ClickListener;->frecontext:Lcom/adobe/fre/FREContext;

    const-string v0, "error"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
