.class Lcom/google/android/gms/internal/zzei$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzei;->zza(Lcom/google/android/gms/internal/zzla;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzBY:Lcom/google/android/gms/internal/zzla;

.field final synthetic zzBZ:Lcom/google/android/gms/internal/zzei;

.field final synthetic zzBj:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzei;Ljava/util/Map;Lcom/google/android/gms/internal/zzla;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzei$1;->zzBZ:Lcom/google/android/gms/internal/zzei;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzei$1;->zzBj:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzei$1;->zzBY:Lcom/google/android/gms/internal/zzla;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "Received Http request."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzjw;->zzaU(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzei$1;->zzBj:Ljava/util/Map;

    const-string v1, "http_request"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzei$1;->zzBZ:Lcom/google/android/gms/internal/zzei;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzei;->zzV(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Response should not be null."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzjw;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/zzka;->zzQu:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzei$1$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzei$1$1;-><init>(Lcom/google/android/gms/internal/zzei$1;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
