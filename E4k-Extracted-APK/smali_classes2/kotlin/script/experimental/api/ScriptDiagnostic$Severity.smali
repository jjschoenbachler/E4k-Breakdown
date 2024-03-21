.class public final enum Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;
.super Ljava/lang/Enum;
.source "errorHandling.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/script/experimental/api/ScriptDiagnostic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Severity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;",
        "",
        "(Ljava/lang/String;I)V",
        "DEBUG",
        "INFO",
        "WARNING",
        "ERROR",
        "FATAL",
        "kotlin-scripting-common"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;

.field public static final enum DEBUG:Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;

.field public static final enum ERROR:Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;

.field public static final enum FATAL:Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;

.field public static final enum INFO:Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;

.field public static final enum WARNING:Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 34
    new-instance v0, Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;

    const-string v1, "DEBUG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;->DEBUG:Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;

    new-instance v0, Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;

    const-string v1, "INFO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;->INFO:Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;

    new-instance v0, Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;

    const-string v1, "WARNING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;->WARNING:Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;

    new-instance v0, Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;

    const-string v1, "ERROR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;->ERROR:Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;

    new-instance v0, Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;

    const-string v1, "FATAL"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;->FATAL:Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;

    sget-object v1, Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;->DEBUG:Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;->INFO:Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;

    aput-object v1, v0, v3

    sget-object v1, Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;->WARNING:Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;

    aput-object v1, v0, v4

    sget-object v1, Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;->ERROR:Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;

    aput-object v1, v0, v5

    sget-object v1, Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;->FATAL:Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;

    aput-object v1, v0, v6

    sput-object v0, Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;->$VALUES:[Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;
    .locals 1

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 34
    check-cast p0, Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;

    return-object p0
.end method

.method public static values()[Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;
    .locals 4

    sget-object v0, Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;->$VALUES:[Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;

    array-length v1, v0

    new-array v1, v1, [Lkotlin/script/experimental/api/ScriptDiagnostic$Severity;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
