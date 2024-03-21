.class Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$SingleChoiceClickListener;
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
    name = "SingleChoiceClickListener"
.end annotation


# instance fields
.field freContext:Lcom/adobe/fre/FREContext;


# direct methods
.method public constructor <init>(Lcom/adobe/fre/FREContext;)V
    .locals 0

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$SingleChoiceClickListener;->freContext:Lcom/adobe/fre/FREContext;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 316
    iget-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$SingleChoiceClickListener;->freContext:Lcom/adobe/fre/FREContext;

    const-string v0, "nativeListDialog_change"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
