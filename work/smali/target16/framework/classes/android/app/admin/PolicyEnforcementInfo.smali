.class public Landroid/app/admin/PolicyEnforcementInfo;
.super Ljava/lang/Object;
.source "PolicyEnforcementInfo.java"


# instance fields
.field private final blacklist mAllAdmins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/admin/EnforcingAdmin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$B4cROj13H68RmsqTLkr3raV7OTA(Landroid/app/admin/EnforcingAdmin;)Z
    .registers 1

    invoke-static {p0}, Landroid/app/admin/PolicyEnforcementInfo;->isSystemAuthority(Landroid/app/admin/EnforcingAdmin;)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/EnforcingAdmin;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Landroid/app/admin/PolicyEnforcementInfo$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/app/admin/PolicyEnforcementInfo$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 47
    invoke-interface {p1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/app/admin/PolicyEnforcementInfo;->mAllAdmins:Ljava/util/List;

    .line 48
    return-void
.end method

.method private static blacklist isDpcAdmin(Landroid/app/admin/EnforcingAdmin;)Z
    .registers 1

    .line 92
    invoke-virtual {p0}, Landroid/app/admin/EnforcingAdmin;->getAuthority()Landroid/app/admin/Authority;

    move-result-object p0

    instance-of p0, p0, Landroid/app/admin/DpcAuthority;

    return p0
.end method

.method private static blacklist isSupervisionRole(Landroid/app/admin/EnforcingAdmin;)Z
    .registers 2

    .line 84
    invoke-virtual {p0}, Landroid/app/admin/EnforcingAdmin;->getAuthority()Landroid/app/admin/Authority;

    move-result-object v0

    instance-of v0, v0, Landroid/app/admin/RoleAuthority;

    if-nez v0, :cond_a

    .line 85
    const/4 p0, 0x0

    return p0

    .line 87
    :cond_a
    invoke-virtual {p0}, Landroid/app/admin/EnforcingAdmin;->getAuthority()Landroid/app/admin/Authority;

    move-result-object p0

    check-cast p0, Landroid/app/admin/RoleAuthority;

    invoke-virtual {p0}, Landroid/app/admin/RoleAuthority;->getRoles()Ljava/util/Set;

    move-result-object p0

    const-string v0, "android.app.role.SYSTEM_SUPERVISION"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static blacklist isSystemAuthority(Landroid/app/admin/EnforcingAdmin;)Z
    .registers 1

    .line 80
    invoke-virtual {p0}, Landroid/app/admin/EnforcingAdmin;->getAuthority()Landroid/app/admin/Authority;

    move-result-object p0

    instance-of p0, p0, Landroid/app/admin/SystemAuthority;

    return p0
.end method

.method static synthetic blacklist lambda$new$0(Landroid/app/admin/EnforcingAdmin;)I
    .registers 2

    .line 40
    invoke-static {p0}, Landroid/app/admin/PolicyEnforcementInfo;->isSupervisionRole(Landroid/app/admin/EnforcingAdmin;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 41
    const/4 p0, 0x0

    return p0

    .line 43
    :cond_8
    invoke-static {p0}, Landroid/app/admin/PolicyEnforcementInfo;->isDpcAdmin(Landroid/app/admin/EnforcingAdmin;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 44
    const/4 p0, 0x1

    return p0

    .line 46
    :cond_10
    const/4 p0, 0x2

    return p0
.end method


# virtual methods
.method public blacklist getAllAdmins()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/admin/EnforcingAdmin;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Landroid/app/admin/PolicyEnforcementInfo;->mAllAdmins:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getMostImportantEnforcingAdmin()Landroid/app/admin/EnforcingAdmin;
    .registers 2

    .line 76
    iget-object v0, p0, Landroid/app/admin/PolicyEnforcementInfo;->mAllAdmins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_12

    :cond_a
    iget-object v0, p0, Landroid/app/admin/PolicyEnforcementInfo;->mAllAdmins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/EnforcingAdmin;

    :goto_12
    return-object v0
.end method

.method public blacklist isOnlyEnforcedBySystem()Z
    .registers 3

    .line 62
    iget-object v0, p0, Landroid/app/admin/PolicyEnforcementInfo;->mAllAdmins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/app/admin/PolicyEnforcementInfo$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/app/admin/PolicyEnforcementInfo$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
