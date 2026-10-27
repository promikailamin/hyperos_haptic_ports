.class public final Lcom/android/server/pm/PackageAbiHelper$Abis;
.super Ljava/lang/Object;
.source "PackageAbiHelper.java"


# instance fields
.field public final primary:Ljava/lang/String;

.field public final secondary:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/android/server/pm/PackageAbiHelper$Abis;->primary:Ljava/lang/String;

    .line 133
    iput-object p2, p0, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public applyTo(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;)V
    .registers 3

    .line 137
    iget-object v0, p0, Lcom/android/server/pm/PackageAbiHelper$Abis;->primary:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    .line 138
    invoke-interface {p1, p0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    return-void
.end method

.method public applyTo(Lcom/android/server/pm/PackageSetting;)V
    .registers 3

    if-eqz p1, :cond_c

    .line 147
    iget-object v0, p0, Lcom/android/server/pm/PackageAbiHelper$Abis;->primary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/server/pm/PackageSetting;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 148
    iget-object p0, p0, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/android/server/pm/PackageSetting;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    :cond_c
    return-void
.end method
