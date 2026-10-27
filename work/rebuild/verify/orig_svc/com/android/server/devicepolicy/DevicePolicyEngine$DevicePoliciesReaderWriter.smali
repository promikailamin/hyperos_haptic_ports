.class public Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;
.super Ljava/lang/Object;
.source "DevicePolicyEngine.java"


# instance fields
.field public final mFile:Ljava/io/File;

.field public final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;Ljava/io/File;)V
    .registers 3

    .line 2607
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2608
    invoke-static {p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->getFileName(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->mFile:Ljava/io/File;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;Ljava/io/File;Lcom/android/server/devicepolicy/DevicePolicyEngine-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;Ljava/io/File;)V

    return-void
.end method

.method public static createBackup(Ljava/lang/String;Ljava/io/File;)V
    .registers 7

    .line 2613
    const-string v0, "DevicePolicyEngine"

    :try_start_2
    new-instance v1, Ljava/io/File;

    const-string v2, "device_policy_backups"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2615
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 2616
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_policy_state.%s.xml"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v3

    .line 2617
    invoke-virtual {v2, v3}, Ljava/lang/String;->formatted([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 2616
    invoke-static {v1, v2}, Ljava/nio/file/Path;->of(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 2618
    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 2619
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backup already exist: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_41
    move-exception p1

    goto :goto_6b

    .line 2621
    :cond_43
    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->getFileName(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/nio/file/CopyOption;

    sget-object v3, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1, v1, v2}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 2623
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backup created at "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6a} :catch_41

    return-void

    .line 2626
    :goto_6b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create backup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static getFileName(Ljava/io/File;)Ljava/io/File;
    .registers 3

    .line 2604
    new-instance v0, Ljava/io/File;

    const-string v1, "device_policy_state.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static readPoliciesInner(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/Map;)V
    .registers 10

    .line 2824
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    .line 2825
    :cond_7
    :goto_7
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v4

    const-string v5, "DevicePolicyEngine"

    if-eqz v4, :cond_55

    .line 2826
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2827
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    const-string/jumbo v6, "policy-key-entry"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4a

    const-string/jumbo v6, "policy-state-entry"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3d

    .line 2842
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown tag for policy entry"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_3d
    if-nez v3, :cond_45

    .line 2836
    const-string v4, "Skipping policy state - unknown policy definition"

    invoke-static {v5, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2838
    :cond_45
    invoke-static {v3, p0}, Lcom/android/server/devicepolicy/PolicyState;->readFromXml(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v2

    goto :goto_7

    .line 2829
    :cond_4a
    invoke-static {p0}, Lcom/android/server/devicepolicy/PolicyDefinition;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 2831
    invoke-virtual {v3}, Lcom/android/server/devicepolicy/PolicyDefinition;->getPolicyKey()Landroid/app/admin/PolicyKey;

    move-result-object v1

    goto :goto_7

    :cond_55
    if-eqz v1, :cond_5e

    if-nez v2, :cond_5a

    goto :goto_5e

    .line 2852
    :cond_5a
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 2847
    :cond_5e
    :goto_5e
    const-string p0, "Error parsing policy, policyKey is %s, and policyState is %s."

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v5, p0, p1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final readEnforcingAdminAndSizeInner(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .registers 10

    .line 2870
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    .line 2873
    :goto_7
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v4

    const-string v5, "DevicePolicyEngine"

    if-eqz v4, :cond_49

    .line 2874
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2875
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    const-string v6, "enforcing-admin"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_44

    const-string/jumbo v6, "policy-sum-size"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3c

    .line 2883
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown tag "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2880
    :cond_3c
    const-string/jumbo v2, "size"

    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_7

    .line 2877
    :cond_44
    invoke-static {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/devicepolicy/EnforcingAdmin;

    move-result-object v3

    goto :goto_7

    :cond_49
    if-nez v3, :cond_51

    .line 2887
    const-string p0, "Error parsing enforcingAdmins, EnforcingAdmin is null."

    invoke-static {v5, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_51
    if-gtz v2, :cond_68

    .line 2891
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Error parsing policy size, size is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2894
    :cond_68
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmAdminPolicySize(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {v3}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result p1

    if-nez p1, :cond_8a

    .line 2895
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmAdminPolicySize(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {v3}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2897
    :cond_8a
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {p0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmAdminPolicySize(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {v3}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final readEnforcingAdminsInner(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .registers 5

    .line 2857
    invoke-static {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/devicepolicy/EnforcingAdmin;

    move-result-object p1

    if-nez p1, :cond_e

    .line 2859
    const-string p0, "DevicePolicyEngine"

    const-string p1, "Error parsing enforcingAdmins, EnforcingAdmin is null."

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2862
    :cond_e
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmEnforcingAdmins(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_30

    .line 2863
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmEnforcingAdmins(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2865
    :cond_30
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {p0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmEnforcingAdmins(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public readFromFileLocked()V
    .registers 4

    .line 2765
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "DevicePolicyEngine"

    if-nez v0, :cond_26

    .line 2766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->mFile:Ljava/io/File;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " doesn\'t exist"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2770
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->mFile:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2771
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->mFile:Ljava/io/File;

    invoke-direct {v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    .line 2774
    :try_start_44
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 2775
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    .line 2777
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->readInnerLocked(Lcom/android/modules/utils/TypedXmlPullParser;)V
    :try_end_4f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_44 .. :try_end_4f} :catch_55
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4f} :catch_55
    .catch Ljava/lang/ClassNotFoundException; {:try_start_44 .. :try_end_4f} :catch_55
    .catchall {:try_start_44 .. :try_end_4f} :catchall_53

    .line 2782
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_53
    move-exception p0

    goto :goto_5f

    :catch_55
    move-exception p0

    .line 2780
    :try_start_56
    const-string v0, "Error parsing resources file"

    invoke-static {v1, v0, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5b
    .catchall {:try_start_56 .. :try_end_5b} :catchall_53

    .line 2782
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :goto_5f
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2783
    throw p0
.end method

.method public final readInnerLocked(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .registers 7

    .line 2789
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 2790
    :goto_4
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 2791
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2792
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_c4

    goto :goto_52

    :sswitch_1a
    const-string v2, "enforcing-admins-entry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_52

    :cond_23
    const/4 v3, 0x4

    goto :goto_52

    :sswitch_25
    const-string/jumbo v2, "max-policy-size-limit"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    goto :goto_52

    :cond_2f
    const/4 v3, 0x3

    goto :goto_52

    :sswitch_31
    const-string v2, "enforcing-admin-and-size"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    goto :goto_52

    :cond_3a
    const/4 v3, 0x2

    goto :goto_52

    :sswitch_3c
    const-string/jumbo v2, "local-policy-entry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    goto :goto_52

    :cond_46
    const/4 v3, 0x1

    goto :goto_52

    :sswitch_48
    const-string v2, "global-policy-entry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    goto :goto_52

    :cond_51
    const/4 v3, 0x0

    :goto_52
    packed-switch v3, :pswitch_data_da

    .line 2813
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DevicePolicyEngine"

    invoke-static {v2, v1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2804
    :pswitch_6c
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->readEnforcingAdminsInner(Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_4

    .line 2810
    :pswitch_70
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->readMaxPolicySizeInner(Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_4

    .line 2807
    :pswitch_74
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->readEnforcingAdminAndSizeInner(Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_4

    :pswitch_78
    const/4 v1, 0x0

    .line 2794
    const-string/jumbo v2, "user-id"

    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2795
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmLocalPolicies(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a2

    .line 2796
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmLocalPolicies(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2798
    :cond_a2
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmLocalPolicies(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->readPoliciesInner(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/Map;)V

    goto/16 :goto_4

    .line 2801
    :pswitch_b7
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmGlobalPolicies(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->readPoliciesInner(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/Map;)V

    goto/16 :goto_4

    :cond_c2
    return-void

    nop

    :sswitch_data_c4
    .sparse-switch
        -0x714a09ff -> :sswitch_48
        -0x4f4580c7 -> :sswitch_3c
        -0x389ac19d -> :sswitch_31
        0x805c241 -> :sswitch_25
        0x3c969357 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_b7
        :pswitch_78
        :pswitch_74
        :pswitch_70
        :pswitch_6c
    .end packed-switch
.end method

.method public final readMaxPolicySizeInner(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .registers 4

    .line 2902
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    const/4 v0, 0x0

    const-string/jumbo v1, "size"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fputmPolicySizeLimit(Lcom/android/server/devicepolicy/DevicePolicyEngine;I)V

    return-void
.end method

.method public final writeEnforcingAdminSizeInnerLocked(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 10

    .line 2734
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmAdminPolicySize(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_7c

    const/4 v0, 0x0

    .line 2735
    :goto_9
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmAdminPolicySize(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_7c

    .line 2736
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmAdminPolicySize(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 2737
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmAdminPolicySize(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 2738
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 2737
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_79

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/EnforcingAdmin;

    const/4 v4, 0x0

    .line 2739
    const-string v5, "enforcing-admin-and-size"

    invoke-interface {p1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2741
    const-string v6, "enforcing-admin"

    invoke-interface {p1, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2742
    invoke-virtual {v3, p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 2743
    invoke-interface {p1, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2744
    const-string/jumbo v6, "policy-sum-size"

    invoke-interface {p1, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2745
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {v7}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmAdminPolicySize(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;

    move-result-object v7

    .line 2746
    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2745
    const-string/jumbo v7, "size"

    invoke-interface {p1, v4, v7, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2747
    invoke-interface {p1, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2748
    invoke-interface {p1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_33

    :cond_79
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_7c
    return-void
.end method

.method public final writeEnforcingAdminsInnerLocked(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 7

    .line 2719
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmEnforcingAdmins(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_4b

    const/4 v0, 0x0

    .line 2720
    :goto_9
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmEnforcingAdmins(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4b

    .line 2721
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmEnforcingAdmins(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 2722
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmEnforcingAdmins(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/EnforcingAdmin;

    const/4 v3, 0x0

    .line 2723
    const-string v4, "enforcing-admins-entry"

    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2724
    invoke-virtual {v2, p1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 2725
    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2f

    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_4b
    return-void
.end method

.method public final writeGlobalPoliciesInnerLocked(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 7

    .line 2699
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmGlobalPolicies(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 2700
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {p0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmGlobalPolicies(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    .line 2701
    const-string v2, "global-policy-entry"

    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2703
    const-string/jumbo v3, "policy-key-entry"

    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2704
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/PolicyKey;

    invoke-virtual {v4, p1}, Landroid/app/admin/PolicyKey;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 2705
    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2707
    const-string/jumbo v3, "policy-state-entry"

    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2708
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/PolicyState;

    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/PolicyState;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 2709
    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2711
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_16

    :cond_50
    return-void
.end method

.method public writeInnerLocked(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 2

    .line 2663
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->writeLocalPoliciesInnerLocked(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 2664
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->writeGlobalPoliciesInnerLocked(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 2665
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->writeEnforcingAdminsInnerLocked(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 2666
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->writeEnforcingAdminSizeInnerLocked(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 2667
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->writeMaxPolicySizeInnerLocked(Lcom/android/modules/utils/TypedXmlSerializer;)V

    return-void
.end method

.method public final writeLocalPoliciesInnerLocked(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 10

    .line 2673
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmLocalPolicies(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_80

    .line 2674
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmLocalPolicies(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2675
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2676
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmLocalPolicies(Lcom/android/server/devicepolicy/DevicePolicyEngine;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 2677
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 2676
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    const/4 v4, 0x0

    .line 2678
    const-string/jumbo v5, "local-policy-entry"

    invoke-interface {p1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2680
    const-string/jumbo v6, "user-id"

    invoke-interface {p1, v4, v6, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2682
    const-string/jumbo v6, "policy-key-entry"

    invoke-interface {p1, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2683
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/admin/PolicyKey;

    invoke-virtual {v7, p1}, Landroid/app/admin/PolicyKey;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 2684
    invoke-interface {p1, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2686
    const-string/jumbo v6, "policy-state-entry"

    invoke-interface {p1, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2687
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/PolicyState;

    invoke-virtual {v3, p1}, Lcom/android/server/devicepolicy/PolicyState;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 2688
    invoke-interface {p1, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2690
    invoke-interface {p1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3f

    :cond_80
    return-void
.end method

.method public final writeMaxPolicySizeInnerLocked(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 5

    const/4 v0, 0x0

    .line 2757
    const-string/jumbo v1, "max-policy-size-limit"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2758
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    invoke-static {p0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->-$$Nest$fgetmPolicySizeLimit(Lcom/android/server/devicepolicy/DevicePolicyEngine;)I

    move-result p0

    const-string/jumbo v2, "size"

    invoke-interface {p1, v0, v2, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2760
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeToFileLocked()V
    .registers 7

    .line 2632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Writing to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->mFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DevicePolicyEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2634
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->mFile:Ljava/io/File;

    invoke-direct {v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    .line 2637
    :try_start_20
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_24} :catch_3d

    .line 2638
    :try_start_24
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v4

    .line 2640
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2643
    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->writeInnerLocked(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 2645
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 2646
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V

    .line 2649
    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_39} :catch_3a

    return-void

    :catch_3a
    move-exception p0

    move-object v2, v3

    goto :goto_3e

    :catch_3d
    move-exception p0

    .line 2653
    :goto_3e
    const-string v3, "Exception when writing"

    invoke-static {v1, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v2, :cond_48

    .line 2655
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_48
    return-void
.end method
