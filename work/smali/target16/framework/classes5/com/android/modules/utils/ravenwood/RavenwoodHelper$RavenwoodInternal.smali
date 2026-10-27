.class public Lcom/android/modules/utils/ravenwood/RavenwoodHelper$RavenwoodInternal;
.super Ljava/lang/Object;
.source "RavenwoodHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/modules/utils/ravenwood/RavenwoodHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RavenwoodInternal"
.end annotation


# static fields
.field public static final blacklist RAVENWOOD_RUNTIME_PATH_JAVA_SYSPROP:Ljava/lang/String; = "android.ravenwood.runtime_path"

.field public static final blacklist RAVENWOOD_VERSION_JAVA_SYSPROP:Ljava/lang/String; = "android.ravenwood.version"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method
