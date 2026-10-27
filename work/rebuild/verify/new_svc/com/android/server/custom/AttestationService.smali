.class public final Lcom/android/server/custom/AttestationService;
.super Lcom/android/server/SystemService;
.source "AttestationService.java"


# static fields
.field public static final API:Ljava/lang/String;

.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "AttestationService"

.field public static final sDisableGmsProps:Ljava/lang/Boolean;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mScheduler:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/custom/AttestationService;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/custom/AttestationService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdlog(Lcom/android/server/custom/AttestationService;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/custom/AttestationService;->dlog(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfetchProps(Lcom/android/server/custom/AttestationService;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/custom/AttestationService;->fetchProps()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misInternetConnected(Lcom/android/server/custom/AttestationService;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/custom/AttestationService;->isInternetConnected()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/custom/AttestationService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 38
    const-class v0, Lcom/android/server/custom/AttestationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10402d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/custom/AttestationService;->API:Ljava/lang/String;

    const/4 v1, 0x3

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/custom/AttestationService;->DEBUG:Z

    .line 48
    const-string/jumbo v0, "persist.sys.pihooks.disable.gms_props"

    const/4 v1, 0x0

    .line 49
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/custom/AttestationService;->sDisableGmsProps:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 56
    iput-object p1, p0, Lcom/android/server/custom/AttestationService;->mContext:Landroid/content/Context;

    .line 57
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/custom/AttestationService;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private dlog(Ljava/lang/String;)V
    .registers 2

    .line 117
    sget-boolean p0, Lcom/android/server/custom/AttestationService;->DEBUG:Z

    if-eqz p0, :cond_9

    .line 118
    sget-object p0, Lcom/android/server/custom/AttestationService;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method


# virtual methods
.method public final fetchProps()Ljava/lang/String;
    .registers 4

    .line 75
    :try_start_0
    new-instance p0, Ljava/net/URI;

    sget-object v0, Lcom/android/server/custom/AttestationService;->API:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p0

    .line 76
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_52

    const/16 v0, 0x2710

    .line 79
    :try_start_13
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 80
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 82
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    .line 83
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_27
    .catchall {:try_start_13 .. :try_end_27} :catchall_43

    .line 84
    :try_start_27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    :goto_2c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    :catchall_36
    move-exception v1

    goto :goto_45

    .line 91
    :cond_38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_3c
    .catchall {:try_start_27 .. :try_end_3c} :catchall_36

    .line 92
    :try_start_3c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_43

    .line 94
    :try_start_3f
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_52

    return-object v1

    :catchall_43
    move-exception v0

    goto :goto_4e

    .line 82
    :goto_45
    :try_start_45
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_4d

    :catchall_49
    move-exception v0

    :try_start_4a
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4d
    throw v1
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_43

    .line 94
    :goto_4e
    :try_start_4e
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 95
    throw v0
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_52} :catch_52

    :catch_52
    move-exception p0

    .line 97
    sget-object v0, Lcom/android/server/custom/AttestationService;->TAG:Ljava/lang/String;

    const-string v1, "Error making an API request"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isInternetConnected()Z
    .registers 4

    .line 103
    iget-object p0, p0, Lcom/android/server/custom/AttestationService;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 104
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 105
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    return v1

    .line 108
    :cond_12
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_34

    const/4 v0, 0x1

    .line 110
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_33

    .line 111
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_33

    const/4 v2, 0x3

    .line 112
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_33

    const/4 v2, 0x2

    .line 113
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_34

    :cond_33
    return v0

    :cond_34
    return v1
.end method

.method public onBootPhase(I)V
    .registers 10

    .line 65
    sget-object v0, Lcom/android/server/custom/AttestationService;->sDisableGmsProps:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/custom/AttestationService;->mContext:Landroid/content/Context;

    const-string v1, "com.google.android.gms"

    invoke-static {v0, v1}, Lcom/android/internal/util/custom/CustomUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_2e

    .line 67
    sget-object p1, Lcom/android/server/custom/AttestationService;->TAG:Ljava/lang/String;

    const-string v0, "Scheduling the service"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v1, p0, Lcom/android/server/custom/AttestationService;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/android/server/custom/AttestationService$FetchGmsCertifiedProps;

    const/4 p1, 0x0

    invoke-direct {v2, p0, p1}, Lcom/android/server/custom/AttestationService$FetchGmsCertifiedProps;-><init>(Lcom/android/server/custom/AttestationService;Lcom/android/server/custom/AttestationService-IA;)V

    const-wide/16 v5, 0x5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_2e
    return-void
.end method

.method public onStart()V
    .registers 1

    .line 0
    return-void
.end method
