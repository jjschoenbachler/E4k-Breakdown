.class Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInput;
.super Landroid/widget/EditText;
.source "TextInputContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextInput"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field final synthetic this$0:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;

.field watcher:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$CustomTextWatcher;


# direct methods
.method constructor <init>(Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;Lcom/adobe/fre/FREContext;Ljava/lang/String;)V
    .locals 1

    .line 427
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInput;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;

    .line 428
    invoke-virtual {p2}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    .line 424
    iput-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInput;->name:Ljava/lang/String;

    .line 429
    iput-object p3, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInput;->name:Ljava/lang/String;

    .line 430
    new-instance p3, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$CustomTextWatcher;

    invoke-direct {p3, p1, p0, p2}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$CustomTextWatcher;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInput;Lcom/adobe/fre/FREContext;)V

    iput-object p3, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInput;->watcher:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$CustomTextWatcher;

    .line 431
    iget-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInput;->watcher:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$CustomTextWatcher;

    invoke-virtual {p0, p1}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInput;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method


# virtual methods
.method public removeWacher()V
    .locals 1

    .line 435
    iget-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInput;->watcher:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$CustomTextWatcher;

    invoke-virtual {p0, v0}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInput;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
