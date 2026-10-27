.class public final Lcom/android/server/LockPerfStub$SingletonHolder;
.super Ljava/lang/Object;
.source "LockPerfStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockPerfStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/server/LockPerfStub;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/LockPerfStub;
    .registers 1

    sget-object v0, Lcom/android/server/LockPerfStub$SingletonHolder;->INSTANCE:Lcom/android/server/LockPerfStub;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 10
    const-class v0, Lcom/android/server/LockPerfStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LockPerfStub;

    sput-object v0, Lcom/android/server/LockPerfStub$SingletonHolder;->INSTANCE:Lcom/android/server/LockPerfStub;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
