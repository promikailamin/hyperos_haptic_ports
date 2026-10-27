.class public Landroid/inputmethodservice/InputMethodServiceInjector;
.super Ljava/lang/Object;
.source "InputMethodServiceInjector.java"

# interfaces
.implements Landroid/inputmethodservice/InputMethodServiceStub;


# static fields
.field public static final whitelist TAG:Ljava/lang/String; = "InputMethodService"

.field private static blacklist sClassLoader:Ljava/lang/ClassLoader;

.field private static blacklist sImeMinVersionSupport:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sIsCanLoadPlugin:Z

.field private static blacklist sIsImeSupport:I

.field private static blacklist sIsMiuiBottomSupport:Z

.field private static blacklist sIsSplitIMESupport:Z

.field private static blacklist sSplitMinVersionSupport:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sVersionCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 35
    const/4 v0, -0x1

    sput v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsImeSupport:I

    .line 36
    sput v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sVersionCode:I

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsSplitIMESupport:Z

    .line 41
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sImeMinVersionSupport:Ljava/util/HashMap;

    .line 43
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sSplitMinVersionSupport:Ljava/util/HashMap;

    .line 46
    const-string v1, "ro.miui.support_miui_ime_bottom"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_20

    move v0, v2

    :cond_20
    sput-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsMiuiBottomSupport:Z

    .line 47
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sImeMinVersionSupport:Ljava/util/HashMap;

    const/16 v1, 0x1ee8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.iflytek.inputmethod.miui"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sImeMinVersionSupport:Ljava/util/HashMap;

    const/16 v1, 0x270

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "com.sohu.inputmethod.sogou.xiaomi"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sImeMinVersionSupport:Ljava/util/HashMap;

    const/16 v1, 0x1dd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "com.baidu.input_mi"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sSplitMinVersionSupport:Ljava/util/HashMap;

    const/16 v1, 0x1f7d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sSplitMinVersionSupport:Ljava/util/HashMap;

    const/16 v1, 0x6f6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sSplitMinVersionSupport:Ljava/util/HashMap;

    const/16 v1, 0x587

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist customizeBottomViewColor(ZIII)V
    .registers 11
    .param p0, "isCustom"    # Z
    .param p1, "bottomColor"    # I
    .param p2, "iconColorUnpressed"    # I
    .param p3, "iconColorPressed"    # I

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "customizeBottomViewColor, isCustom : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    sget-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsCanLoadPlugin:Z

    if-eqz v0, :cond_52

    .line 139
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    new-array v0, v0, [Ljava/lang/Object;

    .line 140
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v6

    .line 139
    const-string v2, "customizeBottomViewColor"

    invoke-static {v2, v1, v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->reflectModule(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 142
    :cond_52
    return-void
.end method

.method private static blacklist getImeVersionCode(Landroid/content/Context;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 189
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "packageName":Ljava/lang/String;
    :try_start_4
    sget v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sVersionCode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_18

    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 193
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_18

    .line 194
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sVersionCode:I
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_18} :catch_19

    .line 199
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_18
    goto :goto_38

    .line 197
    :catch_19
    move-exception v1

    .line 198
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Version failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputMethodService"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_38
    sget v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sVersionCode:I

    return v1
.end method

.method private static blacklist getModuleContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 181
    :try_start_0
    const-string v0, "com.miui.phrase"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v0

    .line 182
    :catch_8
    move-exception v0

    .line 183
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "InputMethodService"

    const-string v2, "getModuleContext"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist isCanLoadPlugin(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 220
    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->isImeSupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsMiuiBottomSupport:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static blacklist isFoldDevice()Z
    .registers 2

    .line 227
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "babylon"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static blacklist isImeSupport(Landroid/content/Context;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 204
    sget v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsImeSupport:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_25

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "currentPackage":Ljava/lang/String;
    sget-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sImeMinVersionSupport:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 207
    .local v3, "minSupportVersionCode":Ljava/lang/Integer;
    if-eqz v3, :cond_22

    .line 208
    invoke-static {p0}, Landroid/inputmethodservice/InputMethodServiceInjector;->getImeVersionCode(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lt v4, v5, :cond_22

    .line 209
    sput v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsImeSupport:I

    .line 210
    return v2

    .line 213
    :cond_22
    sput v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsImeSupport:I

    .line 214
    return v1

    .line 216
    .end local v0    # "currentPackage":Ljava/lang/String;
    .end local v3    # "minSupportVersionCode":Ljava/lang/Integer;
    :cond_25
    if-ne v0, v2, :cond_28

    move v1, v2

    :cond_28
    return v1
.end method

.method private static varargs blacklist reflectModule(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .registers 6
    .param p0, "method"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 170
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    const-string v0, "com.miui.inputmethod.InputMethodBottomManager"

    sget-object v1, Landroid/inputmethodservice/InputMethodServiceInjector;->sClassLoader:Ljava/lang/ClassLoader;

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 171
    .local v0, "clazz":Ljava/lang/Class;
    invoke-virtual {v0, p0, p1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 172
    .local v1, "declaredMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 173
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_16

    .line 176
    nop

    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "declaredMethod":Ljava/lang/reflect/Method;
    goto :goto_1c

    .line 174
    :catch_16
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "InputMethodService"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1c
    return-void
.end method

.method public static whitelist setInternalInsetsInfoRegion(Ljava/lang/Object;Landroid/graphics/Region;)V
    .registers 4
    .param p0, "internalInsetsInfo"    # Ljava/lang/Object;
    .param p1, "region"    # Landroid/graphics/Region;

    .line 146
    instance-of v0, p0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    if-eqz v0, :cond_17

    .line 147
    move-object v0, p0

    check-cast v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 148
    .local v0, "info":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    if-eqz p1, :cond_13

    .line 149
    iget-object v1, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v1, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 150
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    goto :goto_17

    .line 152
    :cond_13
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 155
    .end local v0    # "info":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    :cond_17
    :goto_17
    return-void
.end method

.method public static whitelist setKeyboardSkinFollowSystemEnabled(Z)V
    .registers 5
    .param p0, "enabled"    # Z

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setKeyboardSkinFollowSystemEnabled, enabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    sget-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsCanLoadPlugin:Z

    if-eqz v0, :cond_31

    .line 164
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "setKeyboardSkinFollowSystemEnabled"

    invoke-static {v2, v1, v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->reflectModule(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 166
    :cond_31
    return-void
.end method


# virtual methods
.method public whitelist addMiuiBottomView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/inputmethod/InputMethodManager;Landroid/inputmethodservice/InputMethodService;)V
    .registers 23
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "fullscreenArea"    # Landroid/view/ViewGroup;
    .param p3, "inputFrame"    # Landroid/view/ViewGroup;
    .param p4, "rootView"    # Landroid/view/View;
    .param p5, "miuiBottomArea"    # Landroid/view/ViewGroup;
    .param p6, "imm"    # Landroid/view/inputmethod/InputMethodManager;
    .param p7, "inputMethodService"    # Landroid/inputmethodservice/InputMethodService;

    .line 63
    invoke-virtual/range {p7 .. p7}, Landroid/inputmethodservice/InputMethodService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 64
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/inputmethodservice/InputMethodServiceInjector;->isCanLoadPlugin(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsCanLoadPlugin:Z

    .line 65
    if-eqz v0, :cond_71

    .line 67
    const-string v0, "com.miui.phrase"

    invoke-static {v1, v0}, Landroid/inputmethodservice/InputMethodModuleManager;->getApkPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "path":Ljava/lang/String;
    :try_start_12
    invoke-static/range {p7 .. p7}, Landroid/inputmethodservice/InputMethodServiceInjector;->getModuleContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 70
    .local v0, "moduleContext":Landroid/content/Context;
    if-eqz v0, :cond_68

    .line 71
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/inputmethodservice/InputMethodModuleManager;->loadDex(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    sput-object v3, Landroid/inputmethodservice/InputMethodServiceInjector;->sClassLoader:Ljava/lang/ClassLoader;

    .line 73
    const-string v3, "addMiuiBottomView"

    const/16 v4, 0x8

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Landroid/view/LayoutInflater;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-class v6, Landroid/view/ViewGroup;

    const/4 v9, 0x2

    aput-object v6, v5, v9

    const-class v6, Landroid/view/ViewGroup;

    const/4 v10, 0x3

    aput-object v6, v5, v10

    const-class v6, Landroid/view/View;

    const/4 v11, 0x4

    aput-object v6, v5, v11

    const-class v6, Landroid/view/ViewGroup;

    const/4 v12, 0x5

    aput-object v6, v5, v12

    const-class v6, Landroid/view/inputmethod/InputMethodManager;

    const/4 v13, 0x6

    aput-object v6, v5, v13

    const-class v6, Landroid/inputmethodservice/InputMethodService;

    const/4 v14, 0x7

    aput-object v6, v5, v14

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v7

    aput-object p1, v4, v8

    aput-object p2, v4, v9

    aput-object p3, v4, v10

    aput-object p4, v4, v11

    aput-object p5, v4, v12

    aput-object p6, v4, v13

    aput-object p7, v4, v14

    invoke-static {v3, v5, v4}, Landroid/inputmethodservice/InputMethodServiceInjector;->reflectModule(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_68} :catch_69

    .line 80
    .end local v0    # "moduleContext":Landroid/content/Context;
    :cond_68
    goto :goto_71

    .line 78
    :catch_69
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "InputMethodService"

    const-string v4, "load dex error!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "path":Ljava/lang/String;
    :cond_71
    :goto_71
    return-void
.end method

.method public whitelist afterComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;Landroid/inputmethodservice/InputMethodService;)V
    .registers 7
    .param p1, "mTmpInsets"    # Landroid/inputmethodservice/InputMethodService$Insets;
    .param p2, "inputMethodService"    # Landroid/inputmethodservice/InputMethodService;

    .line 86
    sget-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsCanLoadPlugin:Z

    if-eqz v0, :cond_15

    .line 87
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/inputmethodservice/InputMethodService$Insets;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string v2, "afterComputeInsets"

    invoke-static {v2, v1, v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->reflectModule(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 89
    :cond_15
    return-void
.end method

.method public blacklist isNeedKeepPortrait(ILandroid/content/res/Resources;)Z
    .registers 8
    .param p1, "internalImeOptions"    # I
    .param p2, "resources"    # Landroid/content/res/Resources;

    .line 118
    const v0, 0x10e0084

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 120
    .local v0, "largeScreenSmallestScreenWidthDp":I
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v0, :cond_13

    move v1, v3

    goto :goto_14

    :cond_13
    move v1, v2

    .line 122
    .local v1, "isLargeScreen":Z
    :goto_14
    if-eqz v1, :cond_1b

    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_1b

    move v2, v3

    .line 124
    .local v2, "isNeedKeepPortrait":Z
    :cond_1b
    return v2
.end method

.method public blacklist isSplitIMESupport(Landroid/content/Context;)Z
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 234
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 235
    :cond_4
    sput-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsSplitIMESupport:Z

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "currentPackage":Ljava/lang/String;
    sget-object v2, Landroid/inputmethodservice/InputMethodServiceInjector;->sSplitMinVersionSupport:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 239
    .local v2, "minSupportVersionCode":Ljava/lang/Integer;
    invoke-static {p1}, Landroid/inputmethodservice/InputMethodServiceInjector;->getImeVersionCode(Landroid/content/Context;)I

    move-result v3

    .line 240
    .local v3, "imeCurVersionCode":I
    const/4 v4, 0x1

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lt v3, v5, :cond_21

    .line 241
    sput-boolean v4, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsSplitIMESupport:Z

    .line 243
    :cond_21
    sget-boolean v5, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsSplitIMESupport:Z

    if-eqz v5, :cond_2c

    invoke-static {}, Landroid/inputmethodservice/InputMethodServiceInjector;->isFoldDevice()Z

    move-result v5

    if-eqz v5, :cond_2c

    move v0, v4

    :cond_2c
    return v0
.end method

.method public whitelist onDestroy(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 107
    sget-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsCanLoadPlugin:Z

    if-eqz v0, :cond_e

    .line 108
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "onDestroy"

    invoke-static {v2, v1, v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->reflectModule(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 110
    :cond_e
    return-void
.end method

.method public whitelist onWindowHidden(Landroid/inputmethodservice/InputMethodService;)V
    .registers 5
    .param p1, "inputMethodService"    # Landroid/inputmethodservice/InputMethodService;

    .line 100
    sget-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsCanLoadPlugin:Z

    if-eqz v0, :cond_e

    .line 101
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "onWindowHidden"

    invoke-static {v2, v1, v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->reflectModule(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 103
    :cond_e
    return-void
.end method

.method public whitelist onWindowShown(Landroid/inputmethodservice/InputMethodService;)V
    .registers 5
    .param p1, "inputMethodService"    # Landroid/inputmethodservice/InputMethodService;

    .line 93
    sget-boolean v0, Landroid/inputmethodservice/InputMethodServiceInjector;->sIsCanLoadPlugin:Z

    if-eqz v0, :cond_e

    .line 94
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "onWindowShown"

    invoke-static {v2, v1, v0}, Landroid/inputmethodservice/InputMethodServiceInjector;->reflectModule(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 96
    :cond_e
    return-void
.end method
