.class public final synthetic Lcom/google/android/gms/measurement/internal/zzjr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@20.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/measurement/internal/zzju;

.field public final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzel;

.field public final synthetic zzc:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzju;Lcom/google/android/gms/measurement/internal/zzel;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjr;->zza:Lcom/google/android/gms/measurement/internal/zzju;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjr;->zzb:Lcom/google/android/gms/measurement/internal/zzel;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzjr;->zzc:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjr;->zza:Lcom/google/android/gms/measurement/internal/zzju;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjr;->zzb:Lcom/google/android/gms/measurement/internal/zzel;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjr;->zzc:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzju;->zzd(Lcom/google/android/gms/measurement/internal/zzel;Landroid/app/job/JobParameters;)V

    return-void
.end method
