.class Lcom/adobe/air/AndroidStageText$RestrictFilter;
.super Ljava/lang/Object;
.source "AndroidStageText.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/AndroidStageText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestrictFilter"
.end annotation


# static fields
.field private static final kMapSize:I = 0x2000


# instance fields
.field private mPattern:Ljava/lang/String;

.field private m_map:[B

.field final synthetic this$0:Lcom/adobe/air/AndroidStageText;


# direct methods
.method public constructor <init>(Lcom/adobe/air/AndroidStageText;Ljava/lang/String;)V
    .locals 9

    .line 1249
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->this$0:Lcom/adobe/air/AndroidStageText;

    .line 1250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1243
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->mPattern:Ljava/lang/String;

    .line 1244
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->m_map:[B

    .line 1251
    iput-object p2, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->mPattern:Ljava/lang/String;

    if-eqz p2, :cond_8

    const-string p1, ""

    .line 1254
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    const/16 p1, 0x2000

    .line 1256
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->m_map:[B

    const/4 p1, 0x0

    .line 1257
    invoke-virtual {p0, p1}, Lcom/adobe/air/AndroidStageText$RestrictFilter;->SetAll(Z)V

    .line 1262
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5e

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 1265
    invoke-virtual {p0, v2}, Lcom/adobe/air/AndroidStageText$RestrictFilter;->SetAll(Z)V

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1267
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v0, v7, :cond_8

    .line 1269
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-nez v3, :cond_4

    const/16 v8, 0x2d

    if-eq v7, v8, :cond_3

    const/16 v8, 0x5c

    if-eq v7, v8, :cond_2

    if-eq v7, v1, :cond_1

    move v8, v3

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    xor-int/lit8 v4, v4, 0x1

    move v8, v3

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    move v8, v3

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    const/4 v8, 0x0

    :goto_1
    if-eqz v3, :cond_7

    if-eqz v5, :cond_6

    :goto_2
    if-gt v6, v7, :cond_5

    .line 1299
    invoke-virtual {p0, v6, v4}, Lcom/adobe/air/AndroidStageText$RestrictFilter;->SetCode(CZ)V

    add-int/lit8 v6, v6, 0x1

    int-to-char v6, v6

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    const/4 v6, 0x0

    goto :goto_3

    .line 1304
    :cond_6
    invoke-virtual {p0, v7, v4}, Lcom/adobe/air/AndroidStageText$RestrictFilter;->SetCode(CZ)V

    move v6, v7

    :cond_7
    :goto_3
    add-int/lit8 v0, v0, 0x1

    move v3, v8

    goto :goto_0

    :cond_8
    return-void
.end method


# virtual methods
.method IsCharAvailable(C)Z
    .locals 3

    .line 1394
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->mPattern:Ljava/lang/String;

    .line 1397
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->m_map:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1403
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->m_map:[B

    shr-int/lit8 v2, p1, 0x3

    aget-byte v0, v0, v2

    and-int/lit8 p1, p1, 0x7

    const/4 v2, 0x1

    shl-int p1, v2, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method IsEmpty()Z
    .locals 1

    .line 1388
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->mPattern:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method SetAll(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0xff

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    int-to-byte p1, p1

    :goto_1
    const/16 v1, 0x2000

    if-ge v0, v1, :cond_1

    .line 1423
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->m_map:[B

    aput-byte p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method SetCode(CZ)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 1412
    iget-object p2, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->m_map:[B

    shr-int/lit8 v1, p1, 0x3

    aget-byte v2, p2, v1

    and-int/lit8 p1, p1, 0x7

    shl-int p1, v0, p1

    or-int/2addr p1, v2

    int-to-byte p1, p1

    aput-byte p1, p2, v1

    goto :goto_0

    .line 1414
    :cond_0
    iget-object p2, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->m_map:[B

    shr-int/lit8 v1, p1, 0x3

    aget-byte v2, p2, v1

    and-int/lit8 p1, p1, 0x7

    shl-int p1, v0, p1

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v2

    int-to-byte p1, p1

    aput-byte p1, p2, v1

    :goto_0
    return-void
.end method

.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 8

    .line 1318
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->mPattern:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1322
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$RestrictFilter;->m_map:[B

    if-nez v0, :cond_1

    const-string v1, ""

    :goto_0
    return-object v1

    .line 1329
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    sub-int v2, p3, p2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_2

    const/4 v2, 0x0

    :goto_1
    add-int v5, p2, v2

    if-ge v5, p3, :cond_3

    add-int v6, p5, v2

    if-ge v6, p6, :cond_3

    .line 1338
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-interface {p4, v6}, Landroid/text/Spanned;->charAt(I)C

    move-result v6

    if-ne v7, v6, :cond_3

    .line 1340
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v5, p2

    :cond_3
    :goto_2
    if-ge v5, p3, :cond_5

    .line 1353
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p4

    .line 1354
    invoke-virtual {p0, p4}, Lcom/adobe/air/AndroidStageText$RestrictFilter;->IsCharAvailable(C)Z

    move-result p5

    if-nez p5, :cond_4

    const/4 v4, 0x0

    goto :goto_3

    .line 1360
    :cond_4
    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    if-eqz v4, :cond_6

    return-object v1

    .line 1370
    :cond_6
    instance-of p3, p1, Landroid/text/Spanned;

    if-eqz p3, :cond_7

    .line 1372
    new-instance p3, Landroid/text/SpannableString;

    invoke-direct {p3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1373
    move-object v1, p1

    check-cast v1, Landroid/text/Spanned;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v2, p2

    move-object v5, p3

    invoke-static/range {v1 .. v6}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    return-object p3

    :cond_7
    return-object v0
.end method
