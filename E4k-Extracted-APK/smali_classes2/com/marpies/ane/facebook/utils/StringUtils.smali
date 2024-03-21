.class public Lcom/marpies/ane/facebook/utils/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field public static final locale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    const-string v2, "US"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/marpies/ane/facebook/utils/StringUtils;->locale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEventErrorJSON(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 26
    sget-object v0, Lcom/marpies/ane/facebook/utils/StringUtils;->locale:Ljava/util/Locale;

    const-string v1, "{ \"listenerID\": %d, \"errorMessage\": \"%s\" }"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 29
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 30
    invoke-static {p1}, Lcom/marpies/ane/facebook/utils/StringUtils;->removeLineBreaks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\""

    const-string v3, "\\\""

    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v2, p1

    .line 26
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getListenerJSONString(I)Ljava/lang/String;
    .locals 4

    .line 45
    sget-object v0, Lcom/marpies/ane/facebook/utils/StringUtils;->locale:Ljava/util/Locale;

    const-string v1, "{ \"listenerID\": %d }"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSingleValueJSONString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 35
    sget-object v0, Lcom/marpies/ane/facebook/utils/StringUtils;->locale:Ljava/util/Locale;

    const-string v1, "{ \"listenerID\": %d, \"%s\": \"%s\" }"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 38
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    const/4 p0, 0x2

    aput-object p2, v2, p0

    .line 35
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeLineBreaks(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\n"

    const-string v1, ""

    .line 49
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\r"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
