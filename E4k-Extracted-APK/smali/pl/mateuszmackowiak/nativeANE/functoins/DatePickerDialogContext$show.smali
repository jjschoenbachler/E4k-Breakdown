.class public Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$show;
.super Ljava/lang/Object;
.source "DatePickerDialogContext.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "show"
.end annotation


# static fields
.field public static final KEY:Ljava/lang/String; = "show"


# instance fields
.field final synthetic this$0:Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;


# direct methods
.method public constructor <init>(Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v15, p1

    move-object/from16 v0, p2

    const/4 v2, 0x0

    .line 236
    :try_start_0
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x1

    .line 237
    aget-object v5, v0, v3

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    .line 238
    aget-object v6, v0, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    .line 240
    aget-object v7, v0, v7

    check-cast v7, Lcom/adobe/fre/FREArray;

    invoke-static {v7}, Lpl/mateuszmackowiak/nativeANE/FREUtilities;->convertFREArrayToStringArray(Lcom/adobe/fre/FREArray;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    .line 242
    aget-object v8, v0, v8

    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x5

    .line 243
    aget-object v9, v0, v9

    invoke-virtual {v9}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v9

    const/4 v10, 0x6

    .line 244
    aget-object v10, v0, v10

    invoke-virtual {v10}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v10

    const/4 v11, 0x7

    .line 245
    aget-object v11, v0, v11

    invoke-virtual {v11}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v11

    .line 246
    iget-object v12, v1, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;

    invoke-static {v12}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;)Landroid/app/AlertDialog;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 247
    iget-object v12, v1, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;

    invoke-static {v12}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;)Landroid/app/AlertDialog;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/AlertDialog;->dismiss()V

    .line 249
    :cond_0
    array-length v12, v0

    const/16 v13, 0xa

    if-lt v12, v13, :cond_1

    const/4 v12, 0x1

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    :goto_0
    const-wide/16 v2, -0x1

    if-eqz v12, :cond_2

    const/16 v2, 0x8

    .line 254
    aget-object v2, v0, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v2

    double-to-long v2, v2

    const/16 v13, 0x9

    .line 255
    aget-object v0, v0, v13

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v13

    double-to-long v13, v13

    move-wide/from16 v16, v13

    move-wide v13, v2

    goto :goto_1

    :cond_2
    move-wide v13, v2

    move-wide/from16 v16, v13

    .line 257
    :goto_1
    iget-object v0, v1, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;

    iget-object v2, v1, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v3, p1

    move-wide/from16 v15, v16

    :try_start_1
    invoke-static/range {v2 .. v16}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;->access$200(Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;Lcom/adobe/fre/FREContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZIZJJ)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-static {v0, v2}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;->access$002(Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 258
    iget-object v0, v1, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext$show;->this$0:Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;

    invoke-static {v0}, Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;->access$000(Lpl/mateuszmackowiak/nativeANE/functoins/DatePickerDialogContext;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const-string v0, "nativeDialog_opened"

    const-string v2, "-1"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v3, p1

    .line 260
    :try_start_2
    invoke-virtual {v3, v0, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v3, p1

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v3, v15

    :goto_2
    const-string v2, "error"

    .line 263
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method
