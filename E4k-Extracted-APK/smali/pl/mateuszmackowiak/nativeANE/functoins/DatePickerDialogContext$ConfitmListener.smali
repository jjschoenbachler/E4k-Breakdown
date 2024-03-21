.class Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$ConfitmListener;
.super Ljava/lang/Object;
.source "DatePickerDialogContext.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfitmListener"
.end annotation


# instance fields
.field freContext:Lcom/adobe/fre/FREContext;

.field private index:I


# direct methods
.method constructor <init>(Lcom/adobe/fre/FREContext;I)V
    .locals 0

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    iput p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$ConfitmListener;->index:I

    .line 494
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$ConfitmListener;->freContext:Lcom/adobe/fre/FREContext;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 500
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$ConfitmListener;->freContext:Lcom/adobe/fre/FREContext;

    const-string v0, "nativeDialog_closed"

    iget v1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$ConfitmListener;->index:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
