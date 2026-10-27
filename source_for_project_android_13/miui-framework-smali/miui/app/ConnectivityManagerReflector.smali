.class public Lmiui/app/ConnectivityManagerReflector;
.super Ljava/lang/Object;
.source "ConnectivityManagerReflector.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "WifiManagerReflector"

.field public static final blacklist TETHERING_WIFI:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getWifiStaSapConcurrency(Landroid/net/wifi/WifiManager;)Z
    .registers 5
    .param p0, "wifiManager"    # Landroid/net/wifi/WifiManager;

    .line 68
    const-class v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "getWifiStaSapConcurrency"

    invoke-static {p0, v3, v0, v2}, Lmiui/util/ReflectionUtils;->tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    move-result-object v0

    .line 70
    .local v0, "reference":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Boolean;>;"
    if-nez v0, :cond_e

    goto :goto_18

    :cond_e
    invoke-virtual {v0}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_18
    return v1
.end method

.method public static blacklist startTethering(Landroid/net/ConnectivityManager;IZ)Z
    .registers 14
    .param p0, "cm"    # Landroid/net/ConnectivityManager;
    .param p1, "type"    # I
    .param p2, "showProvisioningUi"    # Z

    .line 40
    const-string v0, "WifiManagerReflector"

    const/4 v1, 0x0

    .line 41
    .local v1, "result":Z
    const-class v2, Landroid/net/ConnectivityManager;

    .line 43
    .local v2, "clazz":Ljava/lang/Class;
    const/4 v3, 0x3

    :try_start_6
    new-array v4, v3, [Ljava/lang/Class;

    .line 44
    .local v4, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 45
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 46
    const-string v5, "android.net.ConnectivityManager$OnStartTetheringCallback"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v8, 0x2

    aput-object v5, v4, v8

    .line 47
    const-string v5, "startTethering"

    invoke-virtual {v2, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 48
    .local v5, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 50
    new-instance v9, Lmiui/app/ConnectivityManagerReflector$1;

    invoke-direct {v9}, Lmiui/app/ConnectivityManagerReflector$1;-><init>()V

    .line 51
    .local v9, "callback":Landroid/net/ConnectivityManager$OnStartTetheringCallback;
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v7

    aput-object v9, v3, v8

    invoke-virtual {v5, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_3c} :catch_5a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_3c} :catch_53
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_3c} :catch_4c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_3c} :catch_45
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3c} :catch_3e

    .line 52
    const/4 v1, 0x1

    .line 63
    .end local v4    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v9    # "callback":Landroid/net/ConnectivityManager$OnStartTetheringCallback;
    :goto_3d
    goto :goto_61

    .line 61
    :catch_3e
    move-exception v3

    .line 62
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "Exception"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_61

    .line 59
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_45
    move-exception v3

    .line 60
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "InvocationTargetException"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_3d

    .line 57
    :catch_4c
    move-exception v3

    .line 58
    .local v3, "e":Ljava/lang/IllegalAccessException;
    const-string v4, "IllegalAccessException"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_3d

    .line 55
    :catch_53
    move-exception v3

    .line 56
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    const-string v4, "NoSuchMethodException"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_3d

    .line 53
    :catch_5a
    move-exception v3

    .line 54
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    const-string v4, "ClassNotFoundException"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_3d

    .line 64
    :goto_61
    return v1
.end method

.method public static blacklist stopTethering(Landroid/net/ConnectivityManager;I)Z
    .registers 10
    .param p0, "cm"    # Landroid/net/ConnectivityManager;
    .param p1, "type"    # I

    .line 20
    const-string v0, "WifiManagerReflector"

    const/4 v1, 0x0

    .line 21
    .local v1, "result":Z
    const-class v2, Landroid/net/ConnectivityManager;

    .line 23
    .local v2, "clazz":Ljava/lang/Class;
    :try_start_5
    const-string v3, "stopTethering"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 24
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 25
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_21} :catch_38
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_21} :catch_31
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_21} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_21} :catch_23

    .line 26
    const/4 v1, 0x1

    .line 35
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_22
    goto :goto_3f

    .line 33
    :catch_23
    move-exception v3

    .line 34
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "Exception"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3f

    .line 31
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_2a
    move-exception v3

    .line 32
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "InvocationTargetException"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_22

    .line 29
    :catch_31
    move-exception v3

    .line 30
    .local v3, "e":Ljava/lang/IllegalAccessException;
    const-string v4, "IllegalAccessException"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_22

    .line 27
    :catch_38
    move-exception v3

    .line 28
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    const-string v4, "NoSuchMethodException"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_22

    .line 36
    :goto_3f
    return v1
.end method
