.class public Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$show;
.super Ljava/lang/Object;
.source "TextInputContext.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "show"
.end annotation


# static fields
.field public static final KEY:Ljava/lang/String; = "show"


# instance fields
.field final synthetic this$0:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;


# direct methods
.method public constructor <init>(Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 195
    :try_start_0
    aget-object v2, p2, v1

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 196
    aget-object v4, p2, v3

    instance-of v4, v4, Lcom/adobe/fre/FREArray;

    if-eqz v4, :cond_0

    .line 197
    aget-object v4, p2, v3

    check-cast v4, Lcom/adobe/fre/FREArray;

    goto :goto_0

    :cond_0
    move-object v4, v0

    .line 198
    :goto_0
    array-length v5, p2

    const/4 v6, 0x2

    if-le v5, v6, :cond_4

    .line 199
    aget-object v5, p2, v6

    if-eqz v5, :cond_1

    aget-object v5, p2, v6

    instance-of v5, v5, Lcom/adobe/fre/FREArray;

    if-eqz v5, :cond_1

    .line 200
    aget-object v5, p2, v6

    check-cast v5, Lcom/adobe/fre/FREArray;

    invoke-static {v5}, Lpl/mateuszmackowiak/nativeANE/FREUtilities;->convertFREArrayToStringArray(Lcom/adobe/fre/FREArray;)[Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v0

    .line 201
    :goto_1
    array-length v7, p2

    const/4 v8, 0x3

    if-le v7, v8, :cond_2

    aget-object v7, p2, v8

    if-eqz v7, :cond_2

    .line 202
    aget-object v7, p2, v8

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v7

    goto :goto_2

    :cond_2
    const/4 v7, 0x1

    .line 203
    :goto_2
    array-length v8, p2

    const/4 v9, 0x4

    if-le v8, v9, :cond_3

    aget-object v8, p2, v9

    if-eqz v8, :cond_3

    .line 204
    aget-object p2, p2, v9

    invoke-virtual {p2}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result p2

    goto :goto_3

    :cond_3
    const/4 p2, 0x1

    goto :goto_3

    :cond_4
    move-object v5, v0

    const/4 p2, 0x1

    const/4 v7, 0x1

    .line 207
    :goto_3
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xb

    if-ge v8, v9, :cond_5

    new-instance p2, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInputDialog;

    iget-object v8, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;

    invoke-direct {p2, v8, p1, v4}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInputDialog;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;Lcom/adobe/fre/FREContext;Lcom/adobe/fre/FREArray;)V

    goto :goto_4

    :cond_5
    new-instance v8, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInputDialog;

    iget-object v9, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;

    invoke-direct {v8, v9, p1, v4, p2}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInputDialog;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;Lcom/adobe/fre/FREContext;Lcom/adobe/fre/FREArray;I)V

    move-object p2, v8

    :goto_4
    if-eqz v2, :cond_6

    .line 212
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p2, v2}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInputDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 214
    :cond_6
    invoke-virtual {p2, v7}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInputDialog;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    if-ne v7, v3, :cond_7

    .line 216
    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$CancelListener;

    iget-object v4, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;

    invoke-direct {v2, v4, p1}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$CancelListener;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;Lcom/adobe/fre/FREContext;)V

    invoke-virtual {p2, v2}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInputDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    :cond_7
    if-eqz v5, :cond_9

    .line 218
    array-length v2, v5

    if-lez v2, :cond_9

    .line 219
    aget-object v2, v5, v1

    new-instance v4, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$ClickListener;

    iget-object v7, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;

    invoke-direct {v4, v7, p2, p1, v1}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$ClickListener;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInputDialog;Lcom/adobe/fre/FREContext;I)V

    invoke-virtual {p2, v2, v4}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInputDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 220
    array-length v1, v5

    if-le v1, v3, :cond_8

    .line 221
    aget-object v1, v5, v3

    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$ClickListener;

    iget-object v4, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;

    invoke-direct {v2, v4, p2, p1, v3}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$ClickListener;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInputDialog;Lcom/adobe/fre/FREContext;I)V

    invoke-virtual {p2, v1, v2}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInputDialog;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 222
    :cond_8
    array-length v1, v5

    if-le v1, v6, :cond_a

    .line 223
    aget-object v1, v5, v6

    new-instance v2, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$ClickListener;

    iget-object v3, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;

    invoke-direct {v2, v3, p2, p1, v6}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$ClickListener;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInputDialog;Lcom/adobe/fre/FREContext;I)V

    invoke-virtual {p2, v1, v2}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInputDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_5

    :cond_9
    const-string v2, "OK"

    .line 225
    new-instance v3, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$ClickListener;

    iget-object v4, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;

    invoke-direct {v3, v4, p2, p1, v1}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$ClickListener;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInputDialog;Lcom/adobe/fre/FREContext;I)V

    invoke-virtual {p2, v2, v3}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInputDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 227
    :cond_a
    :goto_5
    iget-object v1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;

    invoke-static {v1}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 228
    iget-object v1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;

    invoke-static {v1}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 230
    :cond_b
    iget-object v1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;

    invoke-virtual {p2}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$TextInputDialog;->create()Landroid/app/AlertDialog;

    move-result-object p2

    invoke-static {v1, p2}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;->access$002(Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    const-string p2, "nativeDialog_opened"

    const-string v1, "-1"

    .line 231
    invoke-virtual {p1, p2, v1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;

    invoke-static {p2}, Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/TextInputContext;)Landroid/app/AlertDialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p2

    const-string v1, "error"

    .line 236
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    return-object v0
.end method
