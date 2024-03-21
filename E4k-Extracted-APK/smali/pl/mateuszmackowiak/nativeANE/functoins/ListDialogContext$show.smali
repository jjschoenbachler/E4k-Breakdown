.class public Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$show;
.super Ljava/lang/Object;
.source "ListDialogContext.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "show"
.end annotation


# static fields
.field public static final KEY:Ljava/lang/String; = "show"


# instance fields
.field final synthetic this$0:Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext;


# direct methods
.method public constructor <init>(Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 182
    :try_start_0
    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    .line 184
    aget-object v2, p2, v1

    instance-of v2, v2, Lcom/adobe/fre/FREArray;

    if-eqz v2, :cond_0

    .line 185
    aget-object v1, p2, v1

    check-cast v1, Lcom/adobe/fre/FREArray;

    invoke-static {v1}, Lpl/mateuszmackowiak/nativeANE/FREUtilities;->convertFREArrayToStringArray(Lcom/adobe/fre/FREArray;)[Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    const/4 v1, 0x2

    .line 187
    aget-object v2, p2, v1

    instance-of v2, v2, Lcom/adobe/fre/FREArray;

    if-eqz v2, :cond_1

    .line 188
    aget-object v1, p2, v1

    check-cast v1, Lcom/adobe/fre/FREArray;

    invoke-static {v1}, Lpl/mateuszmackowiak/nativeANE/FREUtilities;->convertFREArrayToStringArray(Lcom/adobe/fre/FREArray;)[Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_1

    :cond_1
    const-string v1, "error"

    const-string v2, "args[2] is not an array"

    .line 190
    invoke-virtual {p1, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    :goto_1
    const/4 v1, 0x3

    .line 193
    aget-object v2, p2, v1

    if-eqz v2, :cond_2

    aget-object v2, p2, v1

    instance-of v2, v2, Lcom/adobe/fre/FREArray;

    if-eqz v2, :cond_2

    .line 194
    aget-object v1, p2, v1

    check-cast v1, Lcom/adobe/fre/FREArray;

    invoke-static {v1}, Lpl/mateuszmackowiak/nativeANE/FREUtilities;->convertFREArrayToBooleadArray(Lcom/adobe/fre/FREArray;)[Z

    move-result-object v1

    move-object v7, v0

    move-object v6, v1

    goto :goto_2

    .line 195
    :cond_2
    aget-object v2, p2, v1

    if-eqz v2, :cond_3

    .line 196
    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v6, v0

    move-object v7, v1

    goto :goto_2

    :cond_3
    const-string v1, "error"

    const-string v2, "args[3] is not an array"

    .line 198
    invoke-virtual {p1, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v0

    move-object v7, v6

    :goto_2
    const/4 v1, 0x4

    .line 200
    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v8

    const/4 v1, 0x5

    .line 201
    aget-object p2, p2, v1

    invoke-virtual {p2}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v9

    .line 203
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext;

    invoke-static {p2}, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext;)Landroid/app/AlertDialog;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 204
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext;

    invoke-static {p2}, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext;)Landroid/app/AlertDialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/AlertDialog;->dismiss()V

    .line 207
    :cond_4
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext;

    move-object v2, p1

    invoke-static/range {v2 .. v9}, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext;->createPopup(Lcom/adobe/fre/FREContext;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/CharSequence;[ZLjava/lang/Integer;ZI)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {p2, v1}, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext;->access$002(Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    const-string p2, "nativeDialog_opened"

    const-string v1, "-1"

    .line 210
    invoke-virtual {p1, p2, v1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object p2, p0, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext;

    invoke-static {p2}, Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/ListDialogContext;)Landroid/app/AlertDialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    const-string v1, "error"

    .line 213
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-object v0
.end method
