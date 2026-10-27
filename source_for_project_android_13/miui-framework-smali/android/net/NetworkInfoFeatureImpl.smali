.class public Landroid/net/NetworkInfoFeatureImpl;
.super Ljava/lang/Object;
.source "NetworkInfoFeatureImpl.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist setTypeName(Landroid/net/NetworkInfo;Ljava/lang/String;)V
    .registers 4
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "typename"    # Ljava/lang/String;

    .line 9
    const-string v0, "mTypeName"

    invoke-static {p1, v0, p2}, Lmiui/util/ReflectionUtils;->trySetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    return-void
.end method
