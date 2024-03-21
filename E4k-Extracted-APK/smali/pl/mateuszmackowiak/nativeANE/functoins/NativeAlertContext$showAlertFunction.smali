.class public Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$showAlertFunction;
.super Ljava/lang/Object;
.source "NativeAlertContext.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "showAlertFunction"
.end annotation


# static fields
.field public static final KEY:Ljava/lang/String; = "showAlertWithTitleAndMessage"


# instance fields
.field final synthetic this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;


# direct methods
.method public constructor <init>(Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$showAlertFunction;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 8
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 276
    :try_start_0
    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    .line 277
    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    .line 278
    aget-object v2, p2, v0

    if-eqz v2, :cond_0

    aget-object v2, p2, v0

    instance-of v2, v2, Lcom/adobe/fre/FREArray;

    if-eqz v2, :cond_0

    .line 279
    aget-object v0, p2, v0

    check-cast v0, Lcom/adobe/fre/FREArray;

    invoke-static {v0}, Lpl/mateuszmackowiak/nativeANE/FREUtilities;->convertFREArrayToCharSequenceArray(Lcom/adobe/fre/FREArray;)[Ljava/lang/CharSequence;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v1

    :goto_0
    const/4 v0, 0x3

    .line 281
    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v6

    const/4 v0, 0x4

    .line 282
    aget-object p2, p2, v0

    invoke-virtual {p2}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v7

    .line 283
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$showAlertFunction;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;

    invoke-static {p2}, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;)Landroid/app/AlertDialog;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 284
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$showAlertFunction;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;

    invoke-static {p2}, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;)Landroid/app/AlertDialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/AlertDialog;->dismiss()V

    .line 286
    :cond_1
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$showAlertFunction;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;->access$100(Lcom/adobe/fre/FREContext;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/CharSequence;ZI)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {p2, v0}, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;->access$002(Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 287
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$showAlertFunction;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;

    invoke-static {p2}, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;)Landroid/app/AlertDialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/AlertDialog;->show()V

    const-string p2, "nativeDialog_opened"

    const-string v0, "-1"

    .line 289
    invoke-virtual {p1, p2, v0}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$showAlertFunction;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;

    invoke-static {p2}, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;)Landroid/app/AlertDialog;

    move-result-object p2

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    .line 292
    iget-object v0, p0, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext$showAlertFunction;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;

    invoke-static {v0}, Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/NativeAlertContext;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const-string v2, "dimen.nativedialogs_alertdialog_button_height"

    .line 294
    invoke-virtual {p1, v2}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v2

    const-string v3, "ND"

    .line 295
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">> ND buttonHeightResourceId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const-string v3, "ND"

    .line 297
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">> ND heightInPixel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {p2, v2}, Landroid/widget/Button;->setHeight(I)V

    .line 299
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setHeight(I)V

    const-string v2, "color.nativedialogs_alertdialog_button_text_color"

    .line 301
    invoke-virtual {p1, v2}, Lcom/adobe/fre/FREContext;->getResourceId(Ljava/lang/String;)I

    move-result v2

    const-string v3, "ND"

    .line 302
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">> ND buttonColorResourceId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_2

    .line 306
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    goto :goto_1

    .line 308
    :cond_2
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    :goto_1
    const-string v3, "ND"

    .line 310
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">> ND buttonColor="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-virtual {p2, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 313
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    const-string v0, "error"

    .line 316
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object v1
.end method
