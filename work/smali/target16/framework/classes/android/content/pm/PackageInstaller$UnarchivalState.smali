.class public final Landroid/content/pm/PackageInstaller$UnarchivalState;
.super Ljava/lang/Object;
.source "PackageInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnarchivalState"
.end annotation


# instance fields
.field private final blacklist mRequiredStorageBytes:J

.field private final blacklist mStatus:I

.field private final blacklist mUnarchiveId:I

.field private final blacklist mUserActionIntent:Landroid/app/PendingIntent;


# direct methods
.method private constructor blacklist <init>(IIJLandroid/app/PendingIntent;)V
    .registers 7

    .line 5988
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5989
    iput p1, p0, Landroid/content/pm/PackageInstaller$UnarchivalState;->mUnarchiveId:I

    .line 5990
    iput p2, p0, Landroid/content/pm/PackageInstaller$UnarchivalState;->mStatus:I

    .line 5991
    const-class p1, Landroid/content/pm/PackageInstaller$UnarchivalStatus;

    const/4 p2, 0x0

    iget v0, p0, Landroid/content/pm/PackageInstaller$UnarchivalState;->mStatus:I

    invoke-static {p1, p2, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 5993
    iput-wide p3, p0, Landroid/content/pm/PackageInstaller$UnarchivalState;->mRequiredStorageBytes:J

    .line 5994
    iput-object p5, p0, Landroid/content/pm/PackageInstaller$UnarchivalState;->mUserActionIntent:Landroid/app/PendingIntent;

    .line 5995
    return-void
.end method

.method public static whitelist createGenericErrorState(I)Landroid/content/pm/PackageInstaller$UnarchivalState;
    .registers 7

    .line 5939
    new-instance v0, Landroid/content/pm/PackageInstaller$UnarchivalState;

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/16 v2, 0x64

    move v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageInstaller$UnarchivalState;-><init>(IIJLandroid/app/PendingIntent;)V

    return-object v0
.end method

.method public static whitelist createInsufficientStorageState(IJLandroid/app/PendingIntent;)Landroid/content/pm/PackageInstaller$UnarchivalState;
    .registers 10

    .line 5914
    new-instance v0, Landroid/content/pm/PackageInstaller$UnarchivalState;

    const/4 v2, 0x2

    move v1, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageInstaller$UnarchivalState;-><init>(IIJLandroid/app/PendingIntent;)V

    return-object v0
.end method

.method public static whitelist createNoConnectivityState(I)Landroid/content/pm/PackageInstaller$UnarchivalState;
    .registers 7

    .line 5927
    new-instance v0, Landroid/content/pm/PackageInstaller$UnarchivalState;

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v2, 0x3

    move v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageInstaller$UnarchivalState;-><init>(IIJLandroid/app/PendingIntent;)V

    return-object v0
.end method

.method public static whitelist createOkState(I)Landroid/content/pm/PackageInstaller$UnarchivalState;
    .registers 7

    .line 5876
    new-instance v0, Landroid/content/pm/PackageInstaller$UnarchivalState;

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageInstaller$UnarchivalState;-><init>(IIJLandroid/app/PendingIntent;)V

    return-object v0
.end method

.method public static whitelist createUserActionRequiredState(ILandroid/app/PendingIntent;)Landroid/content/pm/PackageInstaller$UnarchivalState;
    .registers 8

    .line 5894
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5895
    new-instance v0, Landroid/content/pm/PackageInstaller$UnarchivalState;

    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    move v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageInstaller$UnarchivalState;-><init>(IIJLandroid/app/PendingIntent;)V

    return-object v0
.end method


# virtual methods
.method blacklist getRequiredStorageBytes()J
    .registers 3

    .line 6023
    iget-wide v0, p0, Landroid/content/pm/PackageInstaller$UnarchivalState;->mRequiredStorageBytes:J

    return-wide v0
.end method

.method blacklist getStatus()I
    .registers 2

    .line 6013
    iget v0, p0, Landroid/content/pm/PackageInstaller$UnarchivalState;->mStatus:I

    return v0
.end method

.method blacklist getUnarchiveId()I
    .registers 2

    .line 6004
    iget v0, p0, Landroid/content/pm/PackageInstaller$UnarchivalState;->mUnarchiveId:I

    return v0
.end method

.method blacklist getUserActionIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 6033
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$UnarchivalState;->mUserActionIntent:Landroid/app/PendingIntent;

    return-object v0
.end method
