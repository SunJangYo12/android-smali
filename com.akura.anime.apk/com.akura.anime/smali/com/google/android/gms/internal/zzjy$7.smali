.class final Lcom/google/android/gms/internal/zzjy$7;
.super Lcom/google/android/gms/internal/zzjy$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzjy;->zze(Landroid/content/Context;Z)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzQj:Z

.field final synthetic zzqB:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjy$7;->zzqB:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzjy$7;->zzQj:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzjy$zza;-><init>(Lcom/google/android/gms/internal/zzjy$1;)V

    return-void
.end method


# virtual methods
.method public zzbQ()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjy$7;->zzqB:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzjy;->zzn(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "content_url_opted_out"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzjy$7;->zzQj:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method