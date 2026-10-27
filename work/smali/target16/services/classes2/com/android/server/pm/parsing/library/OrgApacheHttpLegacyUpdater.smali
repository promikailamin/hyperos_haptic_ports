.class public Lcom/android/server/pm/parsing/library/OrgApacheHttpLegacyUpdater;
.super Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
.source "OrgApacheHttpLegacyUpdater.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;-><init>()V

    return-void
.end method

.method public static apkTargetsApiLevelLessThanOrEqualToOMR1(Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .registers 2

    .line 36
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result p0

    const/16 v0, 0x1c

    if-ge p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public updatePackage(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;ZZ)V
    .registers 4

    .line 45
    invoke-static {p1}, Lcom/android/server/pm/parsing/library/OrgApacheHttpLegacyUpdater;->apkTargetsApiLevelLessThanOrEqualToOMR1(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 46
    const-string/jumbo p2, "org.apache.http.legacy"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;->prefixRequiredLibrary(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V

    :cond_c
    return-void
.end method
