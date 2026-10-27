.class public Landroid/os/BinderProxyStub;
.super Ljava/lang/Object;
.source "BinderProxyStub.java"


# static fields
.field private static final blacklist INSTANCE:Landroid/os/BinderProxyStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 11
    const-class v0, Landroid/os/BinderProxyStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BinderProxyStub;

    sput-object v0, Landroid/os/BinderProxyStub;->INSTANCE:Landroid/os/BinderProxyStub;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get()Landroid/os/BinderProxyStub;
    .registers 1

    .line 14
    sget-object v0, Landroid/os/BinderProxyStub;->INSTANCE:Landroid/os/BinderProxyStub;

    return-object v0
.end method


# virtual methods
.method public blacklist collectPrivacyTestModeInfo(Landroid/os/IBinder;ILandroid/os/Parcel;I)V
    .registers 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "data"    # Landroid/os/Parcel;
    .param p4, "flag"    # I

    .line 18
    return-void
.end method

.method public blacklist collectPrivacyTestModeProvider(Landroid/os/IBinder;ILandroid/net/Uri;I)V
    .registers 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "flag"    # I

    .line 21
    return-void
.end method
