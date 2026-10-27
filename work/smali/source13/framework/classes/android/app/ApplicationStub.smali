.class public Landroid/app/ApplicationStub;
.super Ljava/lang/Object;
.source "ApplicationStub.java"


# static fields
.field private static final blacklist sInstance:Landroid/app/ApplicationStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 9
    const-class v0, Landroid/app/ApplicationStub;

    .line 10
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationStub;

    sput-object v0, Landroid/app/ApplicationStub;->sInstance:Landroid/app/ApplicationStub;

    .line 9
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get()Landroid/app/ApplicationStub;
    .registers 1

    .line 13
    sget-object v0, Landroid/app/ApplicationStub;->sInstance:Landroid/app/ApplicationStub;

    return-object v0
.end method


# virtual methods
.method blacklist onCreate(Landroid/app/Application;)V
    .registers 2
    .param p1, "application"    # Landroid/app/Application;

    .line 16
    return-void
.end method
