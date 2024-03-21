.class Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$onMyWeelChangeListener;
.super Ljava/lang/Object;
.source "NativePickerDialogContext.java"

# interfaces
.implements Lkankan/wheel/widget/OnWheelChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "onMyWeelChangeListener"
.end annotation


# instance fields
.field freContext:Lcom/adobe/fre/FREContext;

.field private index:I

.field final synthetic this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;


# direct methods
.method public constructor <init>(Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;Lcom/adobe/fre/FREContext;I)V
    .locals 0

    .line 386
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$onMyWeelChangeListener;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    iput p3, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$onMyWeelChangeListener;->index:I

    .line 388
    iput-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$onMyWeelChangeListener;->freContext:Lcom/adobe/fre/FREContext;

    return-void
.end method


# virtual methods
.method public onChanged(Lkankan/wheel/widget/WheelView;II)V
    .locals 2

    .line 392
    :try_start_0
    iget-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$onMyWeelChangeListener;->freContext:Lcom/adobe/fre/FREContext;

    const-string p2, "nativeListDialog_change"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$onMyWeelChangeListener;->index:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 394
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativePickerDialogContext$onMyWeelChangeListener;->freContext:Lcom/adobe/fre/FREContext;

    const-string p3, "error"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
