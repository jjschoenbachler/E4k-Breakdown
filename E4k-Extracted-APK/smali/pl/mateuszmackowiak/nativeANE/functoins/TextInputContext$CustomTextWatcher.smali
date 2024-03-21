.class Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$CustomTextWatcher;
.super Ljava/lang/Object;
.source "TextInputContext.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomTextWatcher"
.end annotation


# instance fields
.field freContext:Lcom/adobe/fre/FREContext;

.field private mEditText:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInput;

.field final synthetic this$0:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;


# direct methods
.method public constructor <init>(Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInput;Lcom/adobe/fre/FREContext;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$CustomTextWatcher;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    iput-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$CustomTextWatcher;->mEditText:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInput;

    .line 447
    iput-object p3, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$CustomTextWatcher;->freContext:Lcom/adobe/fre/FREContext;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 456
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$CustomTextWatcher;->mEditText:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInput;

    iget-object p2, p2, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInput;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "#_#"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$CustomTextWatcher;->mEditText:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInput;

    invoke-virtual {p2}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInput;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 457
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$CustomTextWatcher;->freContext:Lcom/adobe/fre/FREContext;

    const-string p3, "change"

    invoke-virtual {p2, p3, p1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
