.class Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$CancelListener;
.super Ljava/lang/Object;
.source "NativeAlertContext.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CancelListener"
.end annotation


# instance fields
.field freContext:Lcom/adobe/fre/FREContext;


# direct methods
.method public constructor <init>(Lcom/adobe/fre/FREContext;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$CancelListener;->freContext:Lcom/adobe/fre/FREContext;

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .line 106
    iget-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$CancelListener;->freContext:Lcom/adobe/fre/FREContext;

    const-string v1, "nativeDialog_closed"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
