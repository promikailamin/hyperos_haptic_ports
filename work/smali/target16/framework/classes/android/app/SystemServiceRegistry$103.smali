.class Landroid/app/SystemServiceRegistry$103;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/SystemServiceRegistry;->registerServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<",
        "Landroid/media/musicrecognition/MusicRecognitionManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1371
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/media/musicrecognition/MusicRecognitionManager;
    .registers 3

    .line 1374
    const-string/jumbo p1, "music_recognition"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 1376
    new-instance v0, Landroid/media/musicrecognition/MusicRecognitionManager;

    .line 1377
    invoke-static {p1}, Landroid/media/musicrecognition/IMusicRecognitionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/musicrecognition/IMusicRecognitionManager;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/media/musicrecognition/MusicRecognitionManager;-><init>(Landroid/media/musicrecognition/IMusicRecognitionManager;)V

    .line 1376
    return-object v0
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1371
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$103;->createService(Landroid/app/ContextImpl;)Landroid/media/musicrecognition/MusicRecognitionManager;

    move-result-object p1

    return-object p1
.end method
