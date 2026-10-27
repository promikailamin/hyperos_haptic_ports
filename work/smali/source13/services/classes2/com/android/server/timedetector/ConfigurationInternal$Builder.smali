.class final Lcom/android/server/timedetector/ConfigurationInternal$Builder;
.super Ljava/lang/Object;
.source "ConfigurationInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timedetector/ConfigurationInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private mAutoDetectionEnabled:Z

.field private mUserConfigAllowed:Z

.field private final mUserId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAutoDetectionEnabled(Lcom/android/server/timedetector/ConfigurationInternal$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mAutoDetectionEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserConfigAllowed(Lcom/android/server/timedetector/ConfigurationInternal$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mUserConfigAllowed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/server/timedetector/ConfigurationInternal$Builder;)I
    .registers 1

    iget p0, p0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mUserId:I

    return p0
.end method

.method constructor <init>(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput p1, p0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mUserId:I

    .line 106
    return-void
.end method


# virtual methods
.method build()Lcom/android/server/timedetector/ConfigurationInternal;
    .registers 3

    .line 119
    new-instance v0, Lcom/android/server/timedetector/ConfigurationInternal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/timedetector/ConfigurationInternal;-><init>(Lcom/android/server/timedetector/ConfigurationInternal$Builder;Lcom/android/server/timedetector/ConfigurationInternal-IA;)V

    return-object v0
.end method

.method setAutoDetectionEnabled(Z)Lcom/android/server/timedetector/ConfigurationInternal$Builder;
    .registers 2
    .param p1, "autoDetectionEnabled"    # Z

    .line 114
    iput-boolean p1, p0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mAutoDetectionEnabled:Z

    .line 115
    return-object p0
.end method

.method setUserConfigAllowed(Z)Lcom/android/server/timedetector/ConfigurationInternal$Builder;
    .registers 2
    .param p1, "userConfigAllowed"    # Z

    .line 109
    iput-boolean p1, p0, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mUserConfigAllowed:Z

    .line 110
    return-object p0
.end method
