.class public Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$setCancelable;
.super Ljava/lang/Object;
.source "NativePickerDialogContext.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "setCancelable"
.end annotation


# static fields
.field public static final KEY:Ljava/lang/String; = "setCancelable"


# instance fields
.field final synthetic this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;


# direct methods
.method public constructor <init>(Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$setCancelable;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 2

    .line 235
    :try_start_0
    iget-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$setCancelable;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;

    invoke-static {v0}, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 236
    aget-object p2, p2, v0

    invoke-virtual {p2}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result p2

    .line 237
    iget-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$setCancelable;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;

    invoke-static {v0}, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 239
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$setCancelable;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;

    invoke-static {p2}, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;)Landroid/app/AlertDialog;

    move-result-object p2

    new-instance v0, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$CancelListener;

    invoke-direct {v0, p1}, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$CancelListener;-><init>(Lcom/adobe/fre/FREContext;)V

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "error"

    .line 243
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
