.class public Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$show;
.super Ljava/lang/Object;
.source "ProgressDialogContext.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "show"
.end annotation


# static fields
.field public static final KEY:Ljava/lang/String; = "showProgressPopup"


# instance fields
.field final synthetic this$0:Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;


# direct methods
.method public constructor <init>(Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 12

    const/4 v0, 0x0

    .line 285
    :try_start_0
    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v0, 0x1

    .line 286
    aget-object v1, p2, v0

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v1, 0x2

    .line 287
    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v3

    const/4 v1, 0x3

    .line 288
    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x4

    .line 289
    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x5

    .line 291
    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v8

    const/4 v1, 0x6

    .line 292
    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v10

    const/4 v1, 0x7

    .line 293
    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v11

    const/16 v1, 0x8

    .line 294
    aget-object p2, p2, v1

    invoke-virtual {p2}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v9

    .line 295
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;

    invoke-static {p2}, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;)Landroid/app/ProgressDialog;

    move-result-object p2

    if-nez p2, :cond_0

    .line 296
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;

    iget-object v1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;

    move-object v2, p1

    invoke-virtual/range {v1 .. v11}, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;->createProgressDialog(Lcom/adobe/fre/FREContext;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;IIZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {p2, v0}, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;->access$002(Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto/16 :goto_0

    :cond_0
    if-eqz v6, :cond_1

    const-string p2, ""

    .line 298
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 299
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;

    invoke-static {p2}, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;)Landroid/app/ProgressDialog;

    move-result-object p2

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v7, :cond_2

    const-string p2, ""

    .line 300
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 301
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;

    invoke-static {p2}, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;)Landroid/app/ProgressDialog;

    move-result-object p2

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 302
    :cond_2
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;

    invoke-static {p2}, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;)Landroid/app/ProgressDialog;

    move-result-object p2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 303
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;

    invoke-static {p2}, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;)Landroid/app/ProgressDialog;

    move-result-object p2

    invoke-virtual {p2, v10}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    if-ne v10, v0, :cond_3

    .line 305
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;

    invoke-static {p2}, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;)Landroid/app/ProgressDialog;

    move-result-object p2

    new-instance v1, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$CancelListener;

    iget-object v2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;

    invoke-direct {v1, v2, p1}, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$CancelListener;-><init>(Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;Lcom/adobe/fre/FREContext;)V

    invoke-virtual {p2, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 306
    :cond_3
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;

    invoke-static {p2}, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;)Landroid/app/ProgressDialog;

    move-result-object p2

    invoke-virtual {p2, v11}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    if-nez v11, :cond_5

    if-lt v8, v0, :cond_4

    .line 309
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;

    invoke-static {p2}, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;)Landroid/app/ProgressDialog;

    move-result-object p2

    invoke-virtual {p2, v8}, Landroid/app/ProgressDialog;->setMax(I)V

    goto :goto_0

    .line 311
    :cond_4
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;

    invoke-static {p2}, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;)Landroid/app/ProgressDialog;

    move-result-object p2

    iget-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;

    invoke-static {v0}, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;->access$100(Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/app/ProgressDialog;->setMax(I)V

    :cond_5
    :goto_0
    const-string p2, "nativeDialog_opened"

    const-string v0, "-1"

    .line 314
    invoke-virtual {p1, p2, v0}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;

    invoke-static {p2}, Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/ProgressDialogContext;)Landroid/app/ProgressDialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    const-string v0, "error"

    .line 320
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
