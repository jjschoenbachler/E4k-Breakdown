.class Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$CancelListener;
.super Ljava/lang/Object;
.source "TextInputContext.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field freContext:Lcom/adobe/fre/FREContext;

.field final synthetic this$0:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;


# direct methods
.method public constructor <init>(Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;Lcom/adobe/fre/FREContext;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$CancelListener;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$CancelListener;->freContext:Lcom/adobe/fre/FREContext;

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 263
    iget-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$CancelListener;->freContext:Lcom/adobe/fre/FREContext;

    const-string v0, "nativeDialog_canceled"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
