.class public final synthetic Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/art/model/ValidationResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/art/model/ValidationResult;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/art/model/ValidationResult;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/art/model/ValidationResult;

    check-cast p1, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->$r8$lambda$rqa432KSCxtI2mUOHDc5Z7NtM3I(Lcom/android/server/art/model/ValidationResult;Ljava/io/File;)Z

    move-result p0

    return p0
.end method
