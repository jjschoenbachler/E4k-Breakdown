.class Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInputDialog;
.super Landroid/app/AlertDialog$Builder;
.source "TextInputContext.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextInputDialog"
.end annotation


# instance fields
.field private textInputs:[Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInput;

.field final synthetic this$0:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;


# direct methods
.method public constructor <init>(Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;Lcom/adobe/fre/FREContext;Lcom/adobe/fre/FREArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/adobe/fre/FREInvalidObjectException;,
            Lcom/adobe/fre/FREWrongThreadException;,
            Ljava/lang/IllegalStateException;,
            Lcom/adobe/fre/FRETypeMismatchException;,
            Lcom/adobe/fre/FREASErrorException;,
            Lcom/adobe/fre/FRENoSuchNameException;
        }
    .end annotation

    .line 279
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInputDialog;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;

    .line 280
    invoke-virtual {p2}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 281
    invoke-virtual {p0, p2, p3}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInputDialog;->createContent(Lcom/adobe/fre/FREContext;Lcom/adobe/fre/FREArray;)V

    return-void
.end method

.method public constructor <init>(Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;Lcom/adobe/fre/FREContext;Lcom/adobe/fre/FREArray;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/adobe/fre/FREInvalidObjectException;,
            Lcom/adobe/fre/FREWrongThreadException;,
            Ljava/lang/IllegalStateException;,
            Lcom/adobe/fre/FRETypeMismatchException;,
            Lcom/adobe/fre/FREASErrorException;,
            Lcom/adobe/fre/FRENoSuchNameException;
        }
    .end annotation

    .line 284
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInputDialog;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;

    .line 285
    invoke-virtual {p2}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p0, p1, p4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 286
    invoke-virtual {p0, p2, p3}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInputDialog;->createContent(Lcom/adobe/fre/FREContext;Lcom/adobe/fre/FREArray;)V

    return-void
.end method


# virtual methods
.method public createContent(Lcom/adobe/fre/FREContext;Lcom/adobe/fre/FREArray;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/adobe/fre/FREInvalidObjectException;,
            Lcom/adobe/fre/FREWrongThreadException;,
            Ljava/lang/IllegalStateException;,
            Lcom/adobe/fre/FRETypeMismatchException;,
            Lcom/adobe/fre/FREASErrorException;,
            Lcom/adobe/fre/FRENoSuchNameException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 295
    :cond_0
    new-instance v0, Landroid/widget/ScrollView;

    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 296
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 297
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 298
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 305
    invoke-virtual {p2}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v2

    long-to-int v2, v2

    .line 307
    new-array v3, v2, [Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInput;

    iput-object v3, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInputDialog;->textInputs:[Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInput;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_7

    int-to-long v5, v3

    .line 311
    invoke-virtual {p2, v5, v6}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v5

    const-string v6, "editable"

    .line 313
    invoke-virtual {v5, v6}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v4, "editable"

    .line 314
    invoke-virtual {v5, v4}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v4

    :cond_1
    if-eqz v4, :cond_5

    const-string v6, "name"

    .line 317
    invoke-virtual {v5, v6}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v6, "name"

    invoke-virtual {v5, v6}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    const-string v6, ""

    .line 318
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 320
    new-instance v7, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInput;

    iget-object v8, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInputDialog;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;

    invoke-direct {v7, v8, p1, v6}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInput;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;Lcom/adobe/fre/FREContext;Ljava/lang/String;)V

    const-string v6, "text"

    .line 322
    invoke-virtual {v5, v6}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v6

    if-eqz v6, :cond_3

    const-string v6, "text"

    .line 323
    invoke-virtual {v5, v6}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInput;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const-string v6, "prompText"

    .line 325
    invoke-virtual {v5, v6}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v6

    if-eqz v6, :cond_4

    const-string v6, "prompText"

    .line 326
    invoke-virtual {v5, v6}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInput;->setHint(Ljava/lang/CharSequence;)V

    .line 328
    :cond_4
    invoke-static {v5}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;->getInputType(Lcom/adobe/fre/FREObject;)I

    move-result v5

    invoke-virtual {v7, v5}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInput;->setInputType(I)V

    .line 330
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 332
    iget-object v5, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInputDialog;->textInputs:[Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInput;

    aput-object v7, v5, v3

    goto :goto_2

    :cond_5
    const-string v6, "text"

    .line 334
    invoke-virtual {v5, v6}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 335
    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v7, "text"

    .line 336
    invoke-virtual {v5, v7}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 340
    :cond_7
    invoke-virtual {p0, v0}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInputDialog;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method public getTextInputs()[Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInput;
    .locals 1

    .line 347
    iget-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInputDialog;->textInputs:[Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInput;

    return-object v0
.end method
