.class final Lcom/android/server/wm/MirrorActiveUidsStub$SINGLETON;
.super Ljava/lang/Object;
.source "MirrorActiveUidsStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MirrorActiveUidsStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SINGLETON"
.end annotation


# static fields
.field static final INSTANCE:Lcom/android/server/wm/MirrorActiveUidsStub;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    const-class v0, Lcom/android/server/wm/MirrorActiveUidsStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/MirrorActiveUidsStub;

    sput-object v0, Lcom/android/server/wm/MirrorActiveUidsStub$SINGLETON;->INSTANCE:Lcom/android/server/wm/MirrorActiveUidsStub;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
