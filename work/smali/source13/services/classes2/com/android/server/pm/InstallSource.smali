.class public final Lcom/android/server/pm/InstallSource;
.super Ljava/lang/Object;
.source "InstallSource.java"


# static fields
.field static final EMPTY:Lcom/android/server/pm/InstallSource;

.field private static final EMPTY_ORPHANED:Lcom/android/server/pm/InstallSource;


# instance fields
.field final initiatingPackageName:Ljava/lang/String;

.field final initiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

.field final installerAttributionTag:Ljava/lang/String;

.field final installerPackageName:Ljava/lang/String;

.field final isInitiatingPackageUninstalled:Z

.field final isOrphaned:Z

.field final originatingPackageName:Ljava/lang/String;

.field final packageSource:I


# direct methods
.method static constructor <clinit>()V
    .registers 19

    .line 35
    new-instance v9, Lcom/android/server/pm/InstallSource;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/InstallSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/android/server/pm/PackageSignatures;I)V

    sput-object v9, Lcom/android/server/pm/InstallSource;->EMPTY:Lcom/android/server/pm/InstallSource;

    .line 39
    new-instance v0, Lcom/android/server/pm/InstallSource;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/android/server/pm/InstallSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/android/server/pm/PackageSignatures;I)V

    sput-object v0, Lcom/android/server/pm/InstallSource;->EMPTY_ORPHANED:Lcom/android/server/pm/InstallSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/android/server/pm/PackageSignatures;I)V
    .registers 10
    .param p1, "initiatingPackageName"    # Ljava/lang/String;
    .param p2, "originatingPackageName"    # Ljava/lang/String;
    .param p3, "installerPackageName"    # Ljava/lang/String;
    .param p4, "installerAttributionTag"    # Ljava/lang/String;
    .param p5, "isOrphaned"    # Z
    .param p6, "isInitiatingPackageUninstalled"    # Z
    .param p7, "initiatingPackageSignatures"    # Lcom/android/server/pm/PackageSignatures;
    .param p8, "packageSource"    # I

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    if-nez p1, :cond_12

    .line 150
    if-nez p7, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 151
    xor-int/lit8 v0, p6, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 153
    :cond_12
    iput-object p1, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    .line 154
    iput-object p2, p0, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    .line 155
    iput-object p3, p0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    .line 156
    iput-object p4, p0, Lcom/android/server/pm/InstallSource;->installerAttributionTag:Ljava/lang/String;

    .line 157
    iput-boolean p5, p0, Lcom/android/server/pm/InstallSource;->isOrphaned:Z

    .line 158
    iput-boolean p6, p0, Lcom/android/server/pm/InstallSource;->isInitiatingPackageUninstalled:Z

    .line 159
    iput-object p7, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    .line 160
    iput p8, p0, Lcom/android/server/pm/InstallSource;->packageSource:I

    .line 161
    return-void
.end method

.method static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/InstallSource;
    .registers 5
    .param p0, "initiatingPackageName"    # Ljava/lang/String;
    .param p1, "originatingPackageName"    # Ljava/lang/String;
    .param p2, "installerPackageName"    # Ljava/lang/String;
    .param p3, "installerAttributionTag"    # Ljava/lang/String;

    .line 94
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/server/pm/InstallSource;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/server/pm/InstallSource;

    move-result-object v0

    return-object v0
.end method

.method static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/server/pm/InstallSource;
    .registers 12
    .param p0, "initiatingPackageName"    # Ljava/lang/String;
    .param p1, "originatingPackageName"    # Ljava/lang/String;
    .param p2, "installerPackageName"    # Ljava/lang/String;
    .param p3, "installerAttributionTag"    # Ljava/lang/String;
    .param p4, "packageSource"    # I

    .line 110
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/InstallSource;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Lcom/android/server/pm/InstallSource;

    move-result-object v0

    return-object v0
.end method

.method static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Lcom/android/server/pm/InstallSource;
    .registers 15
    .param p0, "initiatingPackageName"    # Ljava/lang/String;
    .param p1, "originatingPackageName"    # Ljava/lang/String;
    .param p2, "installerPackageName"    # Ljava/lang/String;
    .param p3, "installerAttributionTag"    # Ljava/lang/String;
    .param p4, "packageSource"    # I
    .param p5, "isOrphaned"    # Z
    .param p6, "isInitiatingPackageUninstalled"    # Z

    .line 118
    nop

    .line 119
    invoke-static {p0}, Lcom/android/server/pm/InstallSource;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {p1}, Lcom/android/server/pm/InstallSource;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-static {p2}, Lcom/android/server/pm/InstallSource;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 118
    const/4 v7, 0x0

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/InstallSource;->createInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;

    move-result-object v0

    return-object v0
.end method

.method static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/InstallSource;
    .registers 13
    .param p0, "initiatingPackageName"    # Ljava/lang/String;
    .param p1, "originatingPackageName"    # Ljava/lang/String;
    .param p2, "installerPackageName"    # Ljava/lang/String;
    .param p3, "installerAttributionTag"    # Ljava/lang/String;
    .param p4, "isOrphaned"    # Z
    .param p5, "isInitiatingPackageUninstalled"    # Z

    .line 102
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/InstallSource;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Lcom/android/server/pm/InstallSource;

    move-result-object v0

    return-object v0
.end method

.method private static createInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;
    .registers 18
    .param p0, "initiatingPackageName"    # Ljava/lang/String;
    .param p1, "originatingPackageName"    # Ljava/lang/String;
    .param p2, "installerPackageName"    # Ljava/lang/String;
    .param p3, "installerAttributionTag"    # Ljava/lang/String;
    .param p4, "packageSource"    # I
    .param p5, "isOrphaned"    # Z
    .param p6, "isInitiatingPackageUninstalled"    # Z
    .param p7, "initiatingPackageSignatures"    # Lcom/android/server/pm/PackageSignatures;

    .line 132
    if-nez p0, :cond_12

    if-nez p1, :cond_12

    if-nez p2, :cond_12

    if-nez p7, :cond_12

    if-nez p6, :cond_12

    .line 135
    if-eqz p5, :cond_f

    sget-object v0, Lcom/android/server/pm/InstallSource;->EMPTY_ORPHANED:Lcom/android/server/pm/InstallSource;

    goto :goto_11

    :cond_f
    sget-object v0, Lcom/android/server/pm/InstallSource;->EMPTY:Lcom/android/server/pm/InstallSource;

    :goto_11
    return-object v0

    .line 137
    :cond_12
    new-instance v9, Lcom/android/server/pm/InstallSource;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/InstallSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/android/server/pm/PackageSignatures;I)V

    return-object v9
.end method

.method private static intern(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 247
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0
.end method


# virtual methods
.method removeInstallerPackage(Ljava/lang/String;)Lcom/android/server/pm/InstallSource;
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;

    .line 207
    if-nez p1, :cond_3

    .line 208
    return-object p0

    .line 211
    :cond_3
    const/4 v0, 0x0

    .line 212
    .local v0, "modified":Z
    iget-boolean v1, p0, Lcom/android/server/pm/InstallSource;->isInitiatingPackageUninstalled:Z

    .line 213
    .local v1, "isInitiatingPackageUninstalled":Z
    iget-object v2, p0, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    .line 214
    .local v2, "originatingPackageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    .line 215
    .local v3, "installerPackageName":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/server/pm/InstallSource;->isOrphaned:Z

    .line 217
    .local v4, "isOrphaned":Z
    iget-object v5, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 218
    if-nez v1, :cond_18

    .line 222
    const/4 v1, 0x1

    .line 223
    const/4 v0, 0x1

    .line 226
    :cond_18
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 227
    const/4 v2, 0x0

    .line 228
    const/4 v0, 0x1

    .line 230
    :cond_20
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 231
    const/4 v3, 0x0

    .line 232
    const/4 v4, 0x1

    .line 233
    const/4 v0, 0x1

    .line 236
    :cond_29
    if-nez v0, :cond_2c

    .line 237
    return-object p0

    .line 240
    :cond_2c
    iget-object v5, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/server/pm/InstallSource;->packageSource:I

    iget-object v12, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    move-object v6, v2

    move-object v7, v3

    move v10, v4

    move v11, v1

    invoke-static/range {v5 .. v12}, Lcom/android/server/pm/InstallSource;->createInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;

    move-result-object v5

    return-object v5
.end method

.method setInitiatingPackageSignatures(Lcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;
    .registers 11
    .param p1, "signatures"    # Lcom/android/server/pm/PackageSignatures;

    .line 194
    iget-object v0, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    if-ne p1, v0, :cond_5

    .line 195
    return-object p0

    .line 197
    :cond_5
    iget-object v1, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/InstallSource;->installerAttributionTag:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/InstallSource;->packageSource:I

    iget-boolean v6, p0, Lcom/android/server/pm/InstallSource;->isOrphaned:Z

    iget-boolean v7, p0, Lcom/android/server/pm/InstallSource;->isInitiatingPackageUninstalled:Z

    move-object v8, p1

    invoke-static/range {v1 .. v8}, Lcom/android/server/pm/InstallSource;->createInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;

    move-result-object v0

    return-object v0
.end method

.method setInstallerPackage(Ljava/lang/String;)Lcom/android/server/pm/InstallSource;
    .registers 11
    .param p1, "installerPackageName"    # Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 169
    return-object p0

    .line 171
    :cond_9
    iget-object v1, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    .line 172
    invoke-static {p1}, Lcom/android/server/pm/InstallSource;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/InstallSource;->installerAttributionTag:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/InstallSource;->packageSource:I

    iget-boolean v6, p0, Lcom/android/server/pm/InstallSource;->isOrphaned:Z

    iget-boolean v7, p0, Lcom/android/server/pm/InstallSource;->isInitiatingPackageUninstalled:Z

    iget-object v8, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    .line 171
    invoke-static/range {v1 .. v8}, Lcom/android/server/pm/InstallSource;->createInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;

    move-result-object v0

    return-object v0
.end method

.method setIsOrphaned(Z)Lcom/android/server/pm/InstallSource;
    .registers 11
    .param p1, "isOrphaned"    # Z

    .line 181
    iget-boolean v0, p0, Lcom/android/server/pm/InstallSource;->isOrphaned:Z

    if-ne p1, v0, :cond_5

    .line 182
    return-object p0

    .line 184
    :cond_5
    iget-object v1, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/InstallSource;->installerAttributionTag:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/InstallSource;->packageSource:I

    iget-boolean v7, p0, Lcom/android/server/pm/InstallSource;->isInitiatingPackageUninstalled:Z

    iget-object v8, p0, Lcom/android/server/pm/InstallSource;->initiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    move v6, p1

    invoke-static/range {v1 .. v8}, Lcom/android/server/pm/InstallSource;->createInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;

    move-result-object v0

    return-object v0
.end method
