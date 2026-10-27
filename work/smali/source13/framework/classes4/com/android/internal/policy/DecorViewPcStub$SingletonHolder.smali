.class public final Lcom/android/internal/policy/DecorViewPcStub$SingletonHolder;
.super Ljava/lang/Object;
.source "DecorViewPcStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/DecorViewPcStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final blacklist INSTANCE:Lcom/android/internal/policy/DecorViewPcStub;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Lcom/android/internal/policy/DecorViewPcStub;
    .registers 1

    sget-object v0, Lcom/android/internal/policy/DecorViewPcStub$SingletonHolder;->INSTANCE:Lcom/android/internal/policy/DecorViewPcStub;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 16
    const-class v0, Lcom/android/internal/policy/DecorViewPcStub;

    .line 17
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DecorViewPcStub;

    sput-object v0, Lcom/android/internal/policy/DecorViewPcStub$SingletonHolder;->INSTANCE:Lcom/android/internal/policy/DecorViewPcStub;

    .line 16
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
