.class public Landroid/content/Intent;
.super Ljava/lang/Object;
.source "Intent.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/Intent$CreatorTokenInfo;,
        Landroid/content/Intent$CommandOptionHandler;,
        Landroid/content/Intent$NestedIntentKey;,
        Landroid/content/Intent$FilterComparison;,
        Landroid/content/Intent$FillInFlags;,
        Landroid/content/Intent$CopyMode;,
        Landroid/content/Intent$UriFlags;,
        Landroid/content/Intent$ExtendedFlags;,
        Landroid/content/Intent$MutableFlags;,
        Landroid/content/Intent$Flags;,
        Landroid/content/Intent$AccessUriMode;,
        Landroid/content/Intent$GrantUriMode;,
        Landroid/content/Intent$ChooserContentType;,
        Landroid/content/Intent$CaptureContentForNoteStatusCodes;,
        Landroid/content/Intent$ShortcutIconResource;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_ACTIVITY_RECOGNIZER:Ljava/lang/String; = "android.intent.action.ACTIVITY_RECOGNIZER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o ACTION_ADVANCED_SETTINGS_CHANGED:Ljava/lang/String; = "android.intent.action.ADVANCED_SETTINGS"

.field public static final whitelist ACTION_AIRPLANE_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.AIRPLANE_MODE"

.field public static final greylist-max-r ACTION_ALARM_CHANGED:Ljava/lang/String; = "android.intent.action.ALARM_CHANGED"

.field public static final whitelist ACTION_ALL_APPS:Ljava/lang/String; = "android.intent.action.ALL_APPS"

.field public static final whitelist ACTION_ANSWER:Ljava/lang/String; = "android.intent.action.ANSWER"

.field public static final whitelist ACTION_APPLICATION_LOCALE_CHANGED:Ljava/lang/String; = "android.intent.action.APPLICATION_LOCALE_CHANGED"

.field public static final whitelist ACTION_APPLICATION_PREFERENCES:Ljava/lang/String; = "android.intent.action.APPLICATION_PREFERENCES"

.field public static final whitelist ACTION_APPLICATION_RESTRICTIONS_CHANGED:Ljava/lang/String; = "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

.field public static final whitelist ACTION_APP_ERROR:Ljava/lang/String; = "android.intent.action.APP_ERROR"

.field public static final whitelist ACTION_ASSIST:Ljava/lang/String; = "android.intent.action.ASSIST"

.field public static final whitelist ACTION_ATTACH_DATA:Ljava/lang/String; = "android.intent.action.ATTACH_DATA"

.field public static final whitelist ACTION_AUTO_REVOKE_PERMISSIONS:Ljava/lang/String; = "android.intent.action.AUTO_REVOKE_PERMISSIONS"

.field public static final whitelist ACTION_BATTERY_CHANGED:Ljava/lang/String; = "android.intent.action.BATTERY_CHANGED"

.field public static final whitelist ACTION_BATTERY_LEVEL_CHANGED:Ljava/lang/String; = "android.intent.action.BATTERY_LEVEL_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_BATTERY_LOW:Ljava/lang/String; = "android.intent.action.BATTERY_LOW"

.field public static final whitelist ACTION_BATTERY_OKAY:Ljava/lang/String; = "android.intent.action.BATTERY_OKAY"

.field public static final whitelist ACTION_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field public static final whitelist ACTION_BUG_REPORT:Ljava/lang/String; = "android.intent.action.BUG_REPORT"

.field public static final whitelist ACTION_CALL:Ljava/lang/String; = "android.intent.action.CALL"

.field public static final whitelist ACTION_CALL_BUTTON:Ljava/lang/String; = "android.intent.action.CALL_BUTTON"

.field public static final whitelist ACTION_CALL_EMERGENCY:Ljava/lang/String; = "android.intent.action.CALL_EMERGENCY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_CALL_PRIVILEGED:Ljava/lang/String; = "android.intent.action.CALL_PRIVILEGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_CAMERA_BUTTON:Ljava/lang/String; = "android.intent.action.CAMERA_BUTTON"

.field public static final blacklist ACTION_CANCEL_ENABLE_ROLLBACK:Ljava/lang/String; = "android.intent.action.CANCEL_ENABLE_ROLLBACK"

.field public static final whitelist ACTION_CARRIER_SETUP:Ljava/lang/String; = "android.intent.action.CARRIER_SETUP"

.field public static final whitelist ACTION_CHOOSER:Ljava/lang/String; = "android.intent.action.CHOOSER"

.field public static final whitelist ACTION_CLOSE_SYSTEM_DIALOGS:Ljava/lang/String; = "android.intent.action.CLOSE_SYSTEM_DIALOGS"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_CONFIGURATION_CHANGED:Ljava/lang/String; = "android.intent.action.CONFIGURATION_CHANGED"

.field public static final whitelist ACTION_CREATE_DOCUMENT:Ljava/lang/String; = "android.intent.action.CREATE_DOCUMENT"

.field public static final whitelist ACTION_CREATE_NOTE:Ljava/lang/String; = "android.intent.action.CREATE_NOTE"

.field public static final whitelist ACTION_CREATE_REMINDER:Ljava/lang/String; = "android.intent.action.CREATE_REMINDER"

.field public static final whitelist ACTION_CREATE_SHORTCUT:Ljava/lang/String; = "android.intent.action.CREATE_SHORTCUT"

.field public static final whitelist ACTION_DATE_CHANGED:Ljava/lang/String; = "android.intent.action.DATE_CHANGED"

.field public static final whitelist ACTION_DEFAULT:Ljava/lang/String; = "android.intent.action.VIEW"

.field public static final whitelist ACTION_DEFINE:Ljava/lang/String; = "android.intent.action.DEFINE"

.field public static final whitelist ACTION_DELETE:Ljava/lang/String; = "android.intent.action.DELETE"

.field public static final whitelist ACTION_DEVICE_CUSTOMIZATION_READY:Ljava/lang/String; = "android.intent.action.DEVICE_CUSTOMIZATION_READY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist ACTION_DEVICE_INITIALIZATION_WIZARD:Ljava/lang/String; = "android.intent.action.DEVICE_INITIALIZATION_WIZARD"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o ACTION_DEVICE_LOCKED_CHANGED:Ljava/lang/String; = "android.intent.action.DEVICE_LOCKED_CHANGED"

.field public static final greylist-max-o ACTION_DEVICE_STORAGE_FULL:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_FULL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_DEVICE_STORAGE_LOW:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_LOW"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o ACTION_DEVICE_STORAGE_NOT_FULL:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_NOT_FULL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_DEVICE_STORAGE_OK:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_OK"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_DIAL:Ljava/lang/String; = "android.intent.action.DIAL"

.field public static final whitelist ACTION_DIAL_EMERGENCY:Ljava/lang/String; = "android.intent.action.DIAL_EMERGENCY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o ACTION_DISMISS_KEYBOARD_SHORTCUTS:Ljava/lang/String; = "com.android.intent.action.DISMISS_KEYBOARD_SHORTCUTS"

.field public static final blacklist ACTION_DISTRACTING_PACKAGES_CHANGED:Ljava/lang/String; = "android.intent.action.DISTRACTING_PACKAGES_CHANGED"

.field public static final greylist-max-o ACTION_DOCK_ACTIVE:Ljava/lang/String; = "android.intent.action.DOCK_ACTIVE"

.field public static final whitelist ACTION_DOCK_EVENT:Ljava/lang/String; = "android.intent.action.DOCK_EVENT"

.field public static final greylist-max-o ACTION_DOCK_IDLE:Ljava/lang/String; = "android.intent.action.DOCK_IDLE"

.field public static final whitelist ACTION_DOMAINS_NEED_VERIFICATION:Ljava/lang/String; = "android.intent.action.DOMAINS_NEED_VERIFICATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_DREAMING_STARTED:Ljava/lang/String; = "android.intent.action.DREAMING_STARTED"

.field public static final whitelist ACTION_DREAMING_STOPPED:Ljava/lang/String; = "android.intent.action.DREAMING_STOPPED"

.field public static final greylist-max-o ACTION_DYNAMIC_SENSOR_CHANGED:Ljava/lang/String; = "android.intent.action.DYNAMIC_SENSOR_CHANGED"

.field public static final whitelist ACTION_EDIT:Ljava/lang/String; = "android.intent.action.EDIT"

.field public static final whitelist ACTION_EXTERNAL_APPLICATIONS_AVAILABLE:Ljava/lang/String; = "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

.field public static final whitelist ACTION_EXTERNAL_APPLICATIONS_UNAVAILABLE:Ljava/lang/String; = "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

.field public static final whitelist ACTION_FACTORY_RESET:Ljava/lang/String; = "android.intent.action.FACTORY_RESET"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_FACTORY_TEST:Ljava/lang/String; = "android.intent.action.FACTORY_TEST"

.field public static final whitelist ACTION_GET_CONTENT:Ljava/lang/String; = "android.intent.action.GET_CONTENT"

.field public static final whitelist ACTION_GET_RESTRICTION_ENTRIES:Ljava/lang/String; = "android.intent.action.GET_RESTRICTION_ENTRIES"

.field public static final whitelist ACTION_GLOBAL_BUTTON:Ljava/lang/String; = "android.intent.action.GLOBAL_BUTTON"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_GTALK_SERVICE_CONNECTED:Ljava/lang/String; = "android.intent.action.GTALK_CONNECTED"

.field public static final whitelist ACTION_GTALK_SERVICE_DISCONNECTED:Ljava/lang/String; = "android.intent.action.GTALK_DISCONNECTED"

.field public static final whitelist ACTION_HEADSET_PLUG:Ljava/lang/String; = "android.intent.action.HEADSET_PLUG"

.field public static final greylist-max-o ACTION_IDLE_MAINTENANCE_END:Ljava/lang/String; = "android.intent.action.ACTION_IDLE_MAINTENANCE_END"

.field public static final greylist-max-o ACTION_IDLE_MAINTENANCE_START:Ljava/lang/String; = "android.intent.action.ACTION_IDLE_MAINTENANCE_START"

.field public static final whitelist ACTION_INCIDENT_REPORT_READY:Ljava/lang/String; = "android.intent.action.INCIDENT_REPORT_READY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_INPUT_METHOD_CHANGED:Ljava/lang/String; = "android.intent.action.INPUT_METHOD_CHANGED"

.field public static final whitelist ACTION_INSERT:Ljava/lang/String; = "android.intent.action.INSERT"

.field public static final whitelist ACTION_INSERT_OR_EDIT:Ljava/lang/String; = "android.intent.action.INSERT_OR_EDIT"

.field public static final whitelist ACTION_INSTALL_FAILURE:Ljava/lang/String; = "android.intent.action.INSTALL_FAILURE"

.field public static final whitelist ACTION_INSTALL_INSTANT_APP_PACKAGE:Ljava/lang/String; = "android.intent.action.INSTALL_INSTANT_APP_PACKAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_INSTALL_PACKAGE:Ljava/lang/String; = "android.intent.action.INSTALL_PACKAGE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_INSTANT_APP_RESOLVER_SETTINGS:Ljava/lang/String; = "android.intent.action.INSTANT_APP_RESOLVER_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_INTENT_FILTER_NEEDS_VERIFICATION:Ljava/lang/String; = "android.intent.action.INTENT_FILTER_NEEDS_VERIFICATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_LAUNCH_CAPTURE_CONTENT_ACTIVITY_FOR_NOTE:Ljava/lang/String; = "android.intent.action.LAUNCH_CAPTURE_CONTENT_ACTIVITY_FOR_NOTE"

.field public static final whitelist ACTION_LOAD_DATA:Ljava/lang/String; = "android.intent.action.LOAD_DATA"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_LOCALE_CHANGED:Ljava/lang/String; = "android.intent.action.LOCALE_CHANGED"

.field public static final whitelist ACTION_LOCKED_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.LOCKED_BOOT_COMPLETED"

.field public static final whitelist ACTION_MAIN:Ljava/lang/String; = "android.intent.action.MAIN"

.field public static final whitelist ACTION_MAIN_USER_LOCKSCREEN_KNOWLEDGE_FACTOR_CHANGED:Ljava/lang/String; = "android.intent.action.MAIN_USER_LOCKSCREEN_KNOWLEDGE_FACTOR_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_MANAGED_PROFILE_ADDED:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_ADDED"

.field public static final whitelist ACTION_MANAGED_PROFILE_AVAILABLE:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_AVAILABLE"

.field public static final whitelist ACTION_MANAGED_PROFILE_REMOVED:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_REMOVED"

.field public static final whitelist ACTION_MANAGED_PROFILE_UNAVAILABLE:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

.field public static final whitelist ACTION_MANAGED_PROFILE_UNLOCKED:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_UNLOCKED"

.field public static final whitelist ACTION_MANAGE_APP_PERMISSION:Ljava/lang/String; = "android.intent.action.MANAGE_APP_PERMISSION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_MANAGE_APP_PERMISSIONS:Ljava/lang/String; = "android.intent.action.MANAGE_APP_PERMISSIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_MANAGE_DEFAULT_APP:Ljava/lang/String; = "android.intent.action.MANAGE_DEFAULT_APP"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_MANAGE_NETWORK_USAGE:Ljava/lang/String; = "android.intent.action.MANAGE_NETWORK_USAGE"

.field public static final whitelist ACTION_MANAGE_PACKAGE_STORAGE:Ljava/lang/String; = "android.intent.action.MANAGE_PACKAGE_STORAGE"

.field public static final whitelist ACTION_MANAGE_PERMISSIONS:Ljava/lang/String; = "android.intent.action.MANAGE_PERMISSIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_MANAGE_PERMISSION_APPS:Ljava/lang/String; = "android.intent.action.MANAGE_PERMISSION_APPS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_MANAGE_PERMISSION_USAGE:Ljava/lang/String; = "android.intent.action.MANAGE_PERMISSION_USAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_MANAGE_SPECIAL_APP_ACCESSES:Ljava/lang/String; = "android.intent.action.MANAGE_SPECIAL_APP_ACCESSES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_MANAGE_UNUSED_APPS:Ljava/lang/String; = "android.intent.action.MANAGE_UNUSED_APPS"

.field public static final greylist ACTION_MASTER_CLEAR:Ljava/lang/String; = "android.intent.action.MASTER_CLEAR"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_MASTER_CLEAR_NOTIFICATION:Ljava/lang/String; = "android.intent.action.MASTER_CLEAR_NOTIFICATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_MEDIA_BAD_REMOVAL:Ljava/lang/String; = "android.intent.action.MEDIA_BAD_REMOVAL"

.field public static final whitelist ACTION_MEDIA_BUTTON:Ljava/lang/String; = "android.intent.action.MEDIA_BUTTON"

.field public static final whitelist ACTION_MEDIA_CHECKING:Ljava/lang/String; = "android.intent.action.MEDIA_CHECKING"

.field public static final whitelist ACTION_MEDIA_EJECT:Ljava/lang/String; = "android.intent.action.MEDIA_EJECT"

.field public static final whitelist ACTION_MEDIA_MOUNTED:Ljava/lang/String; = "android.intent.action.MEDIA_MOUNTED"

.field public static final whitelist ACTION_MEDIA_NOFS:Ljava/lang/String; = "android.intent.action.MEDIA_NOFS"

.field public static final whitelist ACTION_MEDIA_REMOVED:Ljava/lang/String; = "android.intent.action.MEDIA_REMOVED"

.field public static final greylist-max-o ACTION_MEDIA_RESOURCE_GRANTED:Ljava/lang/String; = "android.intent.action.MEDIA_RESOURCE_GRANTED"

.field public static final whitelist ACTION_MEDIA_SCANNER_FINISHED:Ljava/lang/String; = "android.intent.action.MEDIA_SCANNER_FINISHED"

.field public static final whitelist ACTION_MEDIA_SCANNER_SCAN_FILE:Ljava/lang/String; = "android.intent.action.MEDIA_SCANNER_SCAN_FILE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_MEDIA_SCANNER_STARTED:Ljava/lang/String; = "android.intent.action.MEDIA_SCANNER_STARTED"

.field public static final whitelist ACTION_MEDIA_SHARED:Ljava/lang/String; = "android.intent.action.MEDIA_SHARED"

.field public static final whitelist ACTION_MEDIA_UNMOUNTABLE:Ljava/lang/String; = "android.intent.action.MEDIA_UNMOUNTABLE"

.field public static final whitelist ACTION_MEDIA_UNMOUNTED:Ljava/lang/String; = "android.intent.action.MEDIA_UNMOUNTED"

.field public static final greylist-max-o ACTION_MEDIA_UNSHARED:Ljava/lang/String; = "android.intent.action.MEDIA_UNSHARED"

.field public static final whitelist ACTION_MY_PACKAGE_REPLACED:Ljava/lang/String; = "android.intent.action.MY_PACKAGE_REPLACED"

.field public static final whitelist ACTION_MY_PACKAGE_SUSPENDED:Ljava/lang/String; = "android.intent.action.MY_PACKAGE_SUSPENDED"

.field public static final whitelist ACTION_MY_PACKAGE_UNSUSPENDED:Ljava/lang/String; = "android.intent.action.MY_PACKAGE_UNSUSPENDED"

.field public static final whitelist ACTION_NEW_OUTGOING_CALL:Ljava/lang/String; = "android.intent.action.NEW_OUTGOING_CALL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_OPEN_DOCUMENT:Ljava/lang/String; = "android.intent.action.OPEN_DOCUMENT"

.field public static final whitelist ACTION_OPEN_DOCUMENT_TREE:Ljava/lang/String; = "android.intent.action.OPEN_DOCUMENT_TREE"

.field public static final blacklist ACTION_OPEN_EYE_DROPPER:Ljava/lang/String; = "android.intent.action.OPEN_EYE_DROPPER"

.field public static final greylist-max-o ACTION_OVERLAY_CHANGED:Ljava/lang/String; = "android.intent.action.OVERLAY_CHANGED"

.field public static final whitelist ACTION_PACKAGES_SUSPENDED:Ljava/lang/String; = "android.intent.action.PACKAGES_SUSPENDED"

.field public static final blacklist ACTION_PACKAGES_SUSPENSION_CHANGED:Ljava/lang/String; = "android.intent.action.PACKAGES_SUSPENSION_CHANGED"

.field public static final whitelist ACTION_PACKAGES_UNSUSPENDED:Ljava/lang/String; = "android.intent.action.PACKAGES_UNSUSPENDED"

.field public static final whitelist ACTION_PACKAGE_ADDED:Ljava/lang/String; = "android.intent.action.PACKAGE_ADDED"

.field public static final whitelist ACTION_PACKAGE_CHANGED:Ljava/lang/String; = "android.intent.action.PACKAGE_CHANGED"

.field public static final whitelist ACTION_PACKAGE_DATA_CLEARED:Ljava/lang/String; = "android.intent.action.PACKAGE_DATA_CLEARED"

.field public static final blacklist ACTION_PACKAGE_ENABLE_ROLLBACK:Ljava/lang/String; = "android.intent.action.PACKAGE_ENABLE_ROLLBACK"

.field public static final whitelist ACTION_PACKAGE_FIRST_LAUNCH:Ljava/lang/String; = "android.intent.action.PACKAGE_FIRST_LAUNCH"

.field public static final whitelist ACTION_PACKAGE_FULLY_REMOVED:Ljava/lang/String; = "android.intent.action.PACKAGE_FULLY_REMOVED"

.field public static final whitelist ACTION_PACKAGE_INSTALL:Ljava/lang/String; = "android.intent.action.PACKAGE_INSTALL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_PACKAGE_NEEDS_INTEGRITY_VERIFICATION:Ljava/lang/String; = "android.intent.action.PACKAGE_NEEDS_INTEGRITY_VERIFICATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_PACKAGE_NEEDS_VERIFICATION:Ljava/lang/String; = "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

.field public static final whitelist ACTION_PACKAGE_REMOVED:Ljava/lang/String; = "android.intent.action.PACKAGE_REMOVED"

.field public static final blacklist ACTION_PACKAGE_REMOVED_INTERNAL:Ljava/lang/String; = "android.intent.action.PACKAGE_REMOVED_INTERNAL"

.field public static final whitelist ACTION_PACKAGE_REPLACED:Ljava/lang/String; = "android.intent.action.PACKAGE_REPLACED"

.field public static final whitelist ACTION_PACKAGE_RESTARTED:Ljava/lang/String; = "android.intent.action.PACKAGE_RESTARTED"

.field public static final whitelist ACTION_PACKAGE_UNSTOPPED:Ljava/lang/String; = "android.intent.action.PACKAGE_UNSTOPPED"

.field public static final whitelist ACTION_PACKAGE_UNSUSPENDED_MANUALLY:Ljava/lang/String; = "android.intent.action.PACKAGE_UNSUSPENDED_MANUALLY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_PACKAGE_VERIFIED:Ljava/lang/String; = "android.intent.action.PACKAGE_VERIFIED"

.field public static final whitelist ACTION_PASTE:Ljava/lang/String; = "android.intent.action.PASTE"

.field public static final whitelist ACTION_PENDING_INCIDENT_REPORTS_CHANGED:Ljava/lang/String; = "android.intent.action.PENDING_INCIDENT_REPORTS_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_PICK:Ljava/lang/String; = "android.intent.action.PICK"

.field public static final whitelist ACTION_PICK_ACTIVITY:Ljava/lang/String; = "android.intent.action.PICK_ACTIVITY"

.field public static final whitelist ACTION_POWER_CONNECTED:Ljava/lang/String; = "android.intent.action.ACTION_POWER_CONNECTED"

.field public static final whitelist ACTION_POWER_DISCONNECTED:Ljava/lang/String; = "android.intent.action.ACTION_POWER_DISCONNECTED"

.field public static final whitelist ACTION_POWER_USAGE_SUMMARY:Ljava/lang/String; = "android.intent.action.POWER_USAGE_SUMMARY"

.field public static final greylist-max-o ACTION_PREFERRED_ACTIVITY_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

.field public static final whitelist ACTION_PRE_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.PRE_BOOT_COMPLETED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_PROCESS_TEXT:Ljava/lang/String; = "android.intent.action.PROCESS_TEXT"

.field public static final whitelist ACTION_PROFILE_ACCESSIBLE:Ljava/lang/String; = "android.intent.action.PROFILE_ACCESSIBLE"

.field public static final whitelist ACTION_PROFILE_ADDED:Ljava/lang/String; = "android.intent.action.PROFILE_ADDED"

.field public static final whitelist ACTION_PROFILE_AVAILABLE:Ljava/lang/String; = "android.intent.action.PROFILE_AVAILABLE"

.field public static final whitelist ACTION_PROFILE_INACCESSIBLE:Ljava/lang/String; = "android.intent.action.PROFILE_INACCESSIBLE"

.field public static final whitelist ACTION_PROFILE_REMOVED:Ljava/lang/String; = "android.intent.action.PROFILE_REMOVED"

.field public static final whitelist ACTION_PROFILE_UNAVAILABLE:Ljava/lang/String; = "android.intent.action.PROFILE_UNAVAILABLE"

.field public static final whitelist ACTION_PROVIDER_CHANGED:Ljava/lang/String; = "android.intent.action.PROVIDER_CHANGED"

.field public static final whitelist ACTION_QUERY_PACKAGE_RESTART:Ljava/lang/String; = "android.intent.action.QUERY_PACKAGE_RESTART"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_QUICK_CLOCK:Ljava/lang/String; = "android.intent.action.QUICK_CLOCK"

.field public static final whitelist ACTION_QUICK_VIEW:Ljava/lang/String; = "android.intent.action.QUICK_VIEW"

.field public static final whitelist ACTION_REBOOT:Ljava/lang/String; = "android.intent.action.REBOOT"

.field public static final greylist-max-o ACTION_REMOTE_INTENT:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field public static final greylist-max-o ACTION_REQUEST_SHUTDOWN:Ljava/lang/String; = "com.android.internal.intent.action.REQUEST_SHUTDOWN"

.field public static final whitelist ACTION_RESOLVE_INSTANT_APP_PACKAGE:Ljava/lang/String; = "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_REVIEW_ACCESSIBILITY_SERVICES:Ljava/lang/String; = "android.intent.action.REVIEW_ACCESSIBILITY_SERVICES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_REVIEW_APP_DATA_SHARING_UPDATES:Ljava/lang/String; = "android.intent.action.REVIEW_APP_DATA_SHARING_UPDATES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_REVIEW_ONGOING_PERMISSION_USAGE:Ljava/lang/String; = "android.intent.action.REVIEW_ONGOING_PERMISSION_USAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_REVIEW_PERMISSIONS:Ljava/lang/String; = "android.intent.action.REVIEW_PERMISSIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_REVIEW_PERMISSION_HISTORY:Ljava/lang/String; = "android.intent.action.REVIEW_PERMISSION_HISTORY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_REVIEW_PERMISSION_USAGE:Ljava/lang/String; = "android.intent.action.REVIEW_PERMISSION_USAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_ROLLBACK_COMMITTED:Ljava/lang/String; = "android.intent.action.ROLLBACK_COMMITTED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_RUN:Ljava/lang/String; = "android.intent.action.RUN"

.field public static final whitelist ACTION_SAFETY_CENTER:Ljava/lang/String; = "android.intent.action.SAFETY_CENTER"

.field public static final blacklist ACTION_SCREEN_CAMERA_GESTURE:Ljava/lang/String; = "android.intent.action.SCREEN_CAMERA_GESTURE"

.field public static final whitelist ACTION_SCREEN_OFF:Ljava/lang/String; = "android.intent.action.SCREEN_OFF"

.field public static final whitelist ACTION_SCREEN_ON:Ljava/lang/String; = "android.intent.action.SCREEN_ON"

.field public static final whitelist ACTION_SEARCH:Ljava/lang/String; = "android.intent.action.SEARCH"

.field public static final whitelist ACTION_SEARCH_LONG_PRESS:Ljava/lang/String; = "android.intent.action.SEARCH_LONG_PRESS"

.field public static final whitelist ACTION_SEND:Ljava/lang/String; = "android.intent.action.SEND"

.field public static final whitelist ACTION_SENDTO:Ljava/lang/String; = "android.intent.action.SENDTO"

.field public static final whitelist ACTION_SEND_MULTIPLE:Ljava/lang/String; = "android.intent.action.SEND_MULTIPLE"

.field public static final greylist ACTION_SERVICE_STATE:Ljava/lang/String; = "android.intent.action.SERVICE_STATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o ACTION_SETTING_RESTORED:Ljava/lang/String; = "android.os.action.SETTING_RESTORED"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist ACTION_SET_WALLPAPER:Ljava/lang/String; = "android.intent.action.SET_WALLPAPER"

.field public static final whitelist ACTION_SHOW_APP_INFO:Ljava/lang/String; = "android.intent.action.SHOW_APP_INFO"

.field public static final greylist-max-o ACTION_SHOW_BRIGHTNESS_DIALOG:Ljava/lang/String; = "com.android.intent.action.SHOW_BRIGHTNESS_DIALOG"

.field public static final blacklist ACTION_SHOW_FOREGROUND_SERVICE_MANAGER:Ljava/lang/String; = "android.intent.action.SHOW_FOREGROUND_SERVICE_MANAGER"

.field public static final greylist-max-o ACTION_SHOW_KEYBOARD_SHORTCUTS:Ljava/lang/String; = "com.android.intent.action.SHOW_KEYBOARD_SHORTCUTS"

.field public static final whitelist ACTION_SHOW_SUSPENDED_APP_DETAILS:Ljava/lang/String; = "android.intent.action.SHOW_SUSPENDED_APP_DETAILS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_SHOW_WORK_APPS:Ljava/lang/String; = "android.intent.action.SHOW_WORK_APPS"

.field public static final whitelist ACTION_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN"

.field public static final whitelist ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_SPLIT_CONFIGURATION_CHANGED:Ljava/lang/String; = "android.intent.action.SPLIT_CONFIGURATION_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_STOP_VOICE_COMMAND:Ljava/lang/String; = "android.intent.action.STOP_VOICE_COMMAND"

.field public static final whitelist ACTION_SYNC:Ljava/lang/String; = "android.intent.action.SYNC"

.field public static final whitelist ACTION_SYSTEM_TUTORIAL:Ljava/lang/String; = "android.intent.action.SYSTEM_TUTORIAL"

.field public static final greylist-max-o ACTION_THERMAL_EVENT:Ljava/lang/String; = "android.intent.action.THERMAL_EVENT"

.field public static final whitelist ACTION_TIMEZONE_CHANGED:Ljava/lang/String; = "android.intent.action.TIMEZONE_CHANGED"

.field public static final whitelist ACTION_TIME_CHANGED:Ljava/lang/String; = "android.intent.action.TIME_SET"

.field public static final whitelist ACTION_TIME_TICK:Ljava/lang/String; = "android.intent.action.TIME_TICK"

.field public static final whitelist ACTION_TRANSLATE:Ljava/lang/String; = "android.intent.action.TRANSLATE"

.field public static final whitelist ACTION_UID_REMOVED:Ljava/lang/String; = "android.intent.action.UID_REMOVED"

.field public static final whitelist ACTION_UMS_CONNECTED:Ljava/lang/String; = "android.intent.action.UMS_CONNECTED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_UMS_DISCONNECTED:Ljava/lang/String; = "android.intent.action.UMS_DISCONNECTED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_UNARCHIVE_PACKAGE:Ljava/lang/String; = "android.intent.action.UNARCHIVE_PACKAGE"

.field public static final whitelist ACTION_UNINSTALL_PACKAGE:Ljava/lang/String; = "android.intent.action.UNINSTALL_PACKAGE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_UPGRADE_SETUP:Ljava/lang/String; = "android.intent.action.UPGRADE_SETUP"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_USER_ADDED:Ljava/lang/String; = "android.intent.action.USER_ADDED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_USER_BACKGROUND:Ljava/lang/String; = "android.intent.action.USER_BACKGROUND"

.field public static final whitelist ACTION_USER_FOREGROUND:Ljava/lang/String; = "android.intent.action.USER_FOREGROUND"

.field public static final greylist-max-o ACTION_USER_INFO_CHANGED:Ljava/lang/String; = "android.intent.action.USER_INFO_CHANGED"

.field public static final blacklist ACTION_USER_INFO_CHANGED_BACKGROUND:Ljava/lang/String; = "android.intent.action.USER_INFO_CHANGED_BACKGROUND"

.field public static final whitelist ACTION_USER_INITIALIZE:Ljava/lang/String; = "android.intent.action.USER_INITIALIZE"

.field public static final whitelist ACTION_USER_PRESENT:Ljava/lang/String; = "android.intent.action.USER_PRESENT"

.field public static final whitelist ACTION_USER_REMOVED:Ljava/lang/String; = "android.intent.action.USER_REMOVED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o ACTION_USER_STARTED:Ljava/lang/String; = "android.intent.action.USER_STARTED"

.field public static final greylist-max-o ACTION_USER_STARTING:Ljava/lang/String; = "android.intent.action.USER_STARTING"

.field public static final greylist-max-o ACTION_USER_STOPPED:Ljava/lang/String; = "android.intent.action.USER_STOPPED"

.field public static final greylist-max-o ACTION_USER_STOPPING:Ljava/lang/String; = "android.intent.action.USER_STOPPING"

.field public static final whitelist ACTION_USER_SWITCHED:Ljava/lang/String; = "android.intent.action.USER_SWITCHED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_USER_UNLOCKED:Ljava/lang/String; = "android.intent.action.USER_UNLOCKED"

.field public static final whitelist ACTION_VIEW:Ljava/lang/String; = "android.intent.action.VIEW"

.field public static final whitelist ACTION_VIEW_APP_FEATURES:Ljava/lang/String; = "android.intent.action.VIEW_APP_FEATURES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_VIEW_LOCUS:Ljava/lang/String; = "android.intent.action.VIEW_LOCUS"

.field public static final whitelist ACTION_VIEW_PERMISSION_USAGE:Ljava/lang/String; = "android.intent.action.VIEW_PERMISSION_USAGE"

.field public static final whitelist ACTION_VIEW_PERMISSION_USAGE_FOR_PERIOD:Ljava/lang/String; = "android.intent.action.VIEW_PERMISSION_USAGE_FOR_PERIOD"

.field public static final whitelist ACTION_VIEW_SAFETY_CENTER_QS:Ljava/lang/String; = "android.intent.action.VIEW_SAFETY_CENTER_QS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_VOICE_ASSIST:Ljava/lang/String; = "android.intent.action.VOICE_ASSIST"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_VOICE_COMMAND:Ljava/lang/String; = "android.intent.action.VOICE_COMMAND"

.field public static final whitelist ACTION_WALLPAPER_CHANGED:Ljava/lang/String; = "android.intent.action.WALLPAPER_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_WEB_SEARCH:Ljava/lang/String; = "android.intent.action.WEB_SEARCH"

.field private static final greylist-max-o ATTR_ACTION:Ljava/lang/String; = "action"

.field private static final greylist-max-o ATTR_CATEGORY:Ljava/lang/String; = "category"

.field private static final greylist-max-o ATTR_COMPONENT:Ljava/lang/String; = "component"

.field private static final greylist-max-o ATTR_DATA:Ljava/lang/String; = "data"

.field private static final greylist-max-o ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final blacklist ATTR_IDENTIFIER:Ljava/lang/String; = "ident"

.field private static final blacklist ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final greylist-max-o ATTR_TYPE:Ljava/lang/String; = "type"

.field public static final whitelist CAPTURE_CONTENT_FOR_NOTE_BLOCKED_BY_ADMIN:I = 0x4

.field public static final whitelist CAPTURE_CONTENT_FOR_NOTE_FAILED:I = 0x1

.field public static final whitelist CAPTURE_CONTENT_FOR_NOTE_SUCCESS:I = 0x0

.field public static final whitelist CAPTURE_CONTENT_FOR_NOTE_USER_CANCELED:I = 0x2

.field public static final whitelist CAPTURE_CONTENT_FOR_NOTE_WINDOW_MODE_UNSUPPORTED:I = 0x3

.field public static final whitelist CATEGORY_ACCESSIBILITY_SHORTCUT_TARGET:Ljava/lang/String; = "android.intent.category.ACCESSIBILITY_SHORTCUT_TARGET"

.field public static final whitelist CATEGORY_ALTERNATIVE:Ljava/lang/String; = "android.intent.category.ALTERNATIVE"

.field public static final whitelist CATEGORY_APP_BROWSER:Ljava/lang/String; = "android.intent.category.APP_BROWSER"

.field public static final whitelist CATEGORY_APP_CALCULATOR:Ljava/lang/String; = "android.intent.category.APP_CALCULATOR"

.field public static final whitelist CATEGORY_APP_CALENDAR:Ljava/lang/String; = "android.intent.category.APP_CALENDAR"

.field public static final whitelist CATEGORY_APP_CONTACTS:Ljava/lang/String; = "android.intent.category.APP_CONTACTS"

.field public static final whitelist CATEGORY_APP_EMAIL:Ljava/lang/String; = "android.intent.category.APP_EMAIL"

.field public static final whitelist CATEGORY_APP_FILES:Ljava/lang/String; = "android.intent.category.APP_FILES"

.field public static final whitelist CATEGORY_APP_FITNESS:Ljava/lang/String; = "android.intent.category.APP_FITNESS"

.field public static final whitelist CATEGORY_APP_GALLERY:Ljava/lang/String; = "android.intent.category.APP_GALLERY"

.field public static final whitelist CATEGORY_APP_MAPS:Ljava/lang/String; = "android.intent.category.APP_MAPS"

.field public static final whitelist CATEGORY_APP_MARKET:Ljava/lang/String; = "android.intent.category.APP_MARKET"

.field public static final whitelist CATEGORY_APP_MESSAGING:Ljava/lang/String; = "android.intent.category.APP_MESSAGING"

.field public static final whitelist CATEGORY_APP_MUSIC:Ljava/lang/String; = "android.intent.category.APP_MUSIC"

.field public static final whitelist CATEGORY_APP_WEATHER:Ljava/lang/String; = "android.intent.category.APP_WEATHER"

.field public static final whitelist CATEGORY_BROWSABLE:Ljava/lang/String; = "android.intent.category.BROWSABLE"

.field public static final whitelist CATEGORY_CAR_DOCK:Ljava/lang/String; = "android.intent.category.CAR_DOCK"

.field public static final greylist-max-o CATEGORY_CAR_LAUNCHER:Ljava/lang/String; = "android.intent.category.CAR_LAUNCHER"

.field public static final whitelist CATEGORY_CAR_MODE:Ljava/lang/String; = "android.intent.category.CAR_MODE"

.field public static final blacklist CATEGORY_COMMUNAL_MODE:Ljava/lang/String; = "android.intent.category.COMMUNAL_MODE"

.field public static final whitelist CATEGORY_DEFAULT:Ljava/lang/String; = "android.intent.category.DEFAULT"

.field public static final whitelist CATEGORY_DESK_DOCK:Ljava/lang/String; = "android.intent.category.DESK_DOCK"

.field public static final whitelist CATEGORY_DEVELOPMENT_PREFERENCE:Ljava/lang/String; = "android.intent.category.DEVELOPMENT_PREFERENCE"

.field public static final whitelist CATEGORY_EMBED:Ljava/lang/String; = "android.intent.category.EMBED"

.field public static final whitelist CATEGORY_FRAMEWORK_INSTRUMENTATION_TEST:Ljava/lang/String; = "android.intent.category.FRAMEWORK_INSTRUMENTATION_TEST"

.field public static final whitelist CATEGORY_HE_DESK_DOCK:Ljava/lang/String; = "android.intent.category.HE_DESK_DOCK"

.field public static final whitelist CATEGORY_HOME:Ljava/lang/String; = "android.intent.category.HOME"

.field public static final greylist-max-o CATEGORY_HOME_MAIN:Ljava/lang/String; = "android.intent.category.HOME_MAIN"

.field public static final whitelist CATEGORY_INFO:Ljava/lang/String; = "android.intent.category.INFO"

.field public static final whitelist CATEGORY_LAUNCHER:Ljava/lang/String; = "android.intent.category.LAUNCHER"

.field public static final greylist-max-o CATEGORY_LAUNCHER_APP:Ljava/lang/String; = "android.intent.category.LAUNCHER_APP"

.field public static final whitelist CATEGORY_LEANBACK_LAUNCHER:Ljava/lang/String; = "android.intent.category.LEANBACK_LAUNCHER"

.field public static final whitelist CATEGORY_LEANBACK_SETTINGS:Ljava/lang/String; = "android.intent.category.LEANBACK_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CATEGORY_LE_DESK_DOCK:Ljava/lang/String; = "android.intent.category.LE_DESK_DOCK"

.field public static final whitelist CATEGORY_MONKEY:Ljava/lang/String; = "android.intent.category.MONKEY"

.field public static final whitelist CATEGORY_OPENABLE:Ljava/lang/String; = "android.intent.category.OPENABLE"

.field public static final whitelist CATEGORY_PREFERENCE:Ljava/lang/String; = "android.intent.category.PREFERENCE"

.field public static final whitelist CATEGORY_SAMPLE_CODE:Ljava/lang/String; = "android.intent.category.SAMPLE_CODE"

.field public static final whitelist CATEGORY_SECONDARY_HOME:Ljava/lang/String; = "android.intent.category.SECONDARY_HOME"

.field public static final whitelist CATEGORY_SELECTED_ALTERNATIVE:Ljava/lang/String; = "android.intent.category.SELECTED_ALTERNATIVE"

.field public static final greylist-max-o CATEGORY_SETUP_WIZARD:Ljava/lang/String; = "android.intent.category.SETUP_WIZARD"

.field public static final whitelist CATEGORY_TAB:Ljava/lang/String; = "android.intent.category.TAB"

.field public static final whitelist CATEGORY_TEST:Ljava/lang/String; = "android.intent.category.TEST"

.field public static final whitelist CATEGORY_TYPED_OPENABLE:Ljava/lang/String; = "android.intent.category.TYPED_OPENABLE"

.field public static final whitelist CATEGORY_UNIT_TEST:Ljava/lang/String; = "android.intent.category.UNIT_TEST"

.field public static final whitelist CATEGORY_VOICE:Ljava/lang/String; = "android.intent.category.VOICE"

.field public static final whitelist CATEGORY_VR_HOME:Ljava/lang/String; = "android.intent.category.VR_HOME"

.field public static final whitelist CHOOSER_CONTENT_TYPE_ALBUM:I = 0x1

.field private static final greylist-max-o COPY_MODE_ALL:I = 0x0

.field private static final greylist-max-o COPY_MODE_FILTER:I = 0x1

.field private static final greylist-max-o COPY_MODE_HISTORY:I = 0x2

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist ENABLE_TOKEN_VERIFY_ACTION:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EXTENDED_FLAG_FILTER_MISMATCH:I = 0x1

.field public static final blacklist EXTENDED_FLAG_MISSING_CREATOR_OR_INVALID_TOKEN:I = 0x2

.field public static final blacklist EXTENDED_FLAG_NESTED_INTENT_KEYS_COLLECTED:I = 0x4

.field public static final whitelist EXTRA_ALARM_COUNT:Ljava/lang/String; = "android.intent.extra.ALARM_COUNT"

.field public static final whitelist EXTRA_ALLOW_MULTIPLE:Ljava/lang/String; = "android.intent.extra.ALLOW_MULTIPLE"

.field public static final whitelist EXTRA_ALLOW_REPLACE:Ljava/lang/String; = "android.intent.extra.ALLOW_REPLACE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_ALTERNATE_INTENTS:Ljava/lang/String; = "android.intent.extra.ALTERNATE_INTENTS"

.field public static final whitelist EXTRA_ARCHIVAL:Ljava/lang/String; = "android.intent.extra.ARCHIVAL"

.field public static final whitelist EXTRA_ASSIST_CONTEXT:Ljava/lang/String; = "android.intent.extra.ASSIST_CONTEXT"

.field public static final blacklist EXTRA_ASSIST_DISPLAY_ID:Ljava/lang/String; = "android.intent.extra.ASSIST_DISPLAY_ID"

.field public static final whitelist EXTRA_ASSIST_INPUT_DEVICE_ID:Ljava/lang/String; = "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

.field public static final whitelist EXTRA_ASSIST_INPUT_HINT_KEYBOARD:Ljava/lang/String; = "android.intent.extra.ASSIST_INPUT_HINT_KEYBOARD"

.field public static final whitelist EXTRA_ASSIST_PACKAGE:Ljava/lang/String; = "android.intent.extra.ASSIST_PACKAGE"

.field public static final whitelist EXTRA_ASSIST_UID:Ljava/lang/String; = "android.intent.extra.ASSIST_UID"

.field public static final whitelist EXTRA_ATTRIBUTION_TAGS:Ljava/lang/String; = "android.intent.extra.ATTRIBUTION_TAGS"

.field public static final whitelist EXTRA_AUTO_LAUNCH_SINGLE_CHOICE:Ljava/lang/String; = "android.intent.extra.AUTO_LAUNCH_SINGLE_CHOICE"

.field public static final whitelist EXTRA_BCC:Ljava/lang/String; = "android.intent.extra.BCC"

.field public static final blacklist EXTRA_BRIGHTNESS_DIALOG_IS_FULL_WIDTH:Ljava/lang/String; = "android.intent.extra.BRIGHTNESS_DIALOG_IS_FULL_WIDTH"

.field public static final whitelist EXTRA_BUG_REPORT:Ljava/lang/String; = "android.intent.extra.BUG_REPORT"

.field public static final whitelist EXTRA_CALLING_PACKAGE:Ljava/lang/String; = "android.intent.extra.CALLING_PACKAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_CAPTURE_CONTENT_FOR_NOTE_STATUS_CODE:Ljava/lang/String; = "android.intent.extra.CAPTURE_CONTENT_FOR_NOTE_STATUS_CODE"

.field public static final whitelist EXTRA_CC:Ljava/lang/String; = "android.intent.extra.CC"

.field public static final greylist EXTRA_CDMA_DEFAULT_ROAMING_INDICATOR:Ljava/lang/String; = "cdmaDefaultRoamingIndicator"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist EXTRA_CDMA_ROAMING_INDICATOR:Ljava/lang/String; = "cdmaRoamingIndicator"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_CHANGED_COMPONENT_NAME:Ljava/lang/String; = "android.intent.extra.changed_component_name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_CHANGED_COMPONENT_NAME_LIST:Ljava/lang/String; = "android.intent.extra.changed_component_name_list"

.field public static final whitelist EXTRA_CHANGED_PACKAGE_LIST:Ljava/lang/String; = "android.intent.extra.changed_package_list"

.field public static final whitelist EXTRA_CHANGED_UID_LIST:Ljava/lang/String; = "android.intent.extra.changed_uid_list"

.field public static final whitelist EXTRA_CHOOSER_ADDITIONAL_CONTENT_URI:Ljava/lang/String; = "android.intent.extra.CHOOSER_ADDITIONAL_CONTENT_URI"

.field public static final whitelist EXTRA_CHOOSER_CONTENT_TYPE_HINT:Ljava/lang/String; = "android.intent.extra.CHOOSER_CONTENT_TYPE_HINT"

.field public static final whitelist EXTRA_CHOOSER_CUSTOM_ACTIONS:Ljava/lang/String; = "android.intent.extra.CHOOSER_CUSTOM_ACTIONS"

.field public static final whitelist EXTRA_CHOOSER_FOCUSED_ITEM_POSITION:Ljava/lang/String; = "android.intent.extra.CHOOSER_FOCUSED_ITEM_POSITION"

.field public static final whitelist EXTRA_CHOOSER_MODIFY_SHARE_ACTION:Ljava/lang/String; = "android.intent.extra.CHOOSER_MODIFY_SHARE_ACTION"

.field public static final whitelist EXTRA_CHOOSER_REFINEMENT_INTENT_SENDER:Ljava/lang/String; = "android.intent.extra.CHOOSER_REFINEMENT_INTENT_SENDER"

.field public static final whitelist EXTRA_CHOOSER_RESULT:Ljava/lang/String; = "android.intent.extra.CHOOSER_RESULT"

.field public static final whitelist EXTRA_CHOOSER_RESULT_INTENT_SENDER:Ljava/lang/String; = "android.intent.extra.CHOOSER_RESULT_INTENT_SENDER"

.field public static final whitelist EXTRA_CHOOSER_TARGETS:Ljava/lang/String; = "android.intent.extra.CHOOSER_TARGETS"

.field public static final whitelist EXTRA_CHOSEN_COMPONENT:Ljava/lang/String; = "android.intent.extra.CHOSEN_COMPONENT"

.field public static final whitelist EXTRA_CHOSEN_COMPONENT_INTENT_SENDER:Ljava/lang/String; = "android.intent.extra.CHOSEN_COMPONENT_INTENT_SENDER"

.field public static final greylist-max-o EXTRA_CLIENT_INTENT:Ljava/lang/String; = "android.intent.extra.client_intent"

.field public static final greylist-max-o EXTRA_CLIENT_LABEL:Ljava/lang/String; = "android.intent.extra.client_label"

.field public static final blacklist EXTRA_COLOR:Ljava/lang/String; = "android.intent.extra.COLOR"

.field public static final whitelist EXTRA_COMPONENT_NAME:Ljava/lang/String; = "android.intent.extra.COMPONENT_NAME"

.field public static final whitelist EXTRA_CONTENT_ANNOTATIONS:Ljava/lang/String; = "android.intent.extra.CONTENT_ANNOTATIONS"

.field public static final whitelist EXTRA_CONTENT_QUERY:Ljava/lang/String; = "android.intent.extra.CONTENT_QUERY"

.field public static final greylist EXTRA_CSS_INDICATOR:Ljava/lang/String; = "cssIndicator"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist EXTRA_DATA_OPERATOR_ALPHA_LONG:Ljava/lang/String; = "data-operator-alpha-long"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist EXTRA_DATA_OPERATOR_ALPHA_SHORT:Ljava/lang/String; = "data-operator-alpha-short"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist EXTRA_DATA_OPERATOR_NUMERIC:Ljava/lang/String; = "data-operator-numeric"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist EXTRA_DATA_RADIO_TECH:Ljava/lang/String; = "dataRadioTechnology"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist EXTRA_DATA_REG_STATE:Ljava/lang/String; = "dataRegState"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_DATA_REMOVED:Ljava/lang/String; = "android.intent.extra.DATA_REMOVED"

.field public static final greylist EXTRA_DATA_ROAMING_TYPE:Ljava/lang/String; = "dataRoamingType"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EXTRA_DISTRACTION_RESTRICTIONS:Ljava/lang/String; = "android.intent.extra.distraction_restrictions"

.field public static final whitelist EXTRA_DOCK_STATE:Ljava/lang/String; = "android.intent.extra.DOCK_STATE"

.field public static final whitelist EXTRA_DOCK_STATE_CAR:I = 0x2

.field public static final whitelist EXTRA_DOCK_STATE_DESK:I = 0x1

.field public static final whitelist EXTRA_DOCK_STATE_HE_DESK:I = 0x4

.field public static final whitelist EXTRA_DOCK_STATE_LE_DESK:I = 0x3

.field public static final whitelist EXTRA_DOCK_STATE_UNDOCKED:I = 0x0

.field public static final whitelist EXTRA_DONT_KILL_APP:Ljava/lang/String; = "android.intent.extra.DONT_KILL_APP"

.field public static final whitelist EXTRA_DURATION_MILLIS:Ljava/lang/String; = "android.intent.extra.DURATION_MILLIS"

.field public static final whitelist EXTRA_EMAIL:Ljava/lang/String; = "android.intent.extra.EMAIL"

.field public static final greylist EXTRA_EMERGENCY_ONLY:Ljava/lang/String; = "emergencyOnly"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_END_TIME:Ljava/lang/String; = "android.intent.extra.END_TIME"

.field public static final whitelist EXTRA_EXCLUDE_COMPONENTS:Ljava/lang/String; = "android.intent.extra.EXCLUDE_COMPONENTS"

.field public static final whitelist EXTRA_FORCE_FACTORY_RESET:Ljava/lang/String; = "android.intent.extra.FORCE_FACTORY_RESET"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_FORCE_MASTER_CLEAR:Ljava/lang/String; = "android.intent.extra.FORCE_MASTER_CLEAR"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_FROM_STORAGE:Ljava/lang/String; = "android.intent.extra.FROM_STORAGE"

.field public static final whitelist EXTRA_HTML_TEXT:Ljava/lang/String; = "android.intent.extra.HTML_TEXT"

.field public static final whitelist EXTRA_INDEX:Ljava/lang/String; = "android.intent.extra.INDEX"

.field public static final whitelist EXTRA_INITIAL_INTENTS:Ljava/lang/String; = "android.intent.extra.INITIAL_INTENTS"

.field public static final whitelist EXTRA_INSTALLER_PACKAGE_NAME:Ljava/lang/String; = "android.intent.extra.INSTALLER_PACKAGE_NAME"

.field public static final whitelist EXTRA_INSTALL_RESULT:Ljava/lang/String; = "android.intent.extra.INSTALL_RESULT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_INSTANT_APP_ACTION:Ljava/lang/String; = "android.intent.extra.INSTANT_APP_ACTION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_INSTANT_APP_BUNDLES:Ljava/lang/String; = "android.intent.extra.INSTANT_APP_BUNDLES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_INSTANT_APP_EXTRAS:Ljava/lang/String; = "android.intent.extra.INSTANT_APP_EXTRAS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_INSTANT_APP_FAILURE:Ljava/lang/String; = "android.intent.extra.INSTANT_APP_FAILURE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_INSTANT_APP_HOSTNAME:Ljava/lang/String; = "android.intent.extra.INSTANT_APP_HOSTNAME"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_INSTANT_APP_SUCCESS:Ljava/lang/String; = "android.intent.extra.INSTANT_APP_SUCCESS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_INSTANT_APP_TOKEN:Ljava/lang/String; = "android.intent.extra.INSTANT_APP_TOKEN"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_INTENT:Ljava/lang/String; = "android.intent.extra.INTENT"

.field public static final greylist EXTRA_IS_DATA_ROAMING_FROM_REGISTRATION:Ljava/lang/String; = "isDataRoamingFromRegistration"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EXTRA_IS_RESTORE:Ljava/lang/String; = "android.intent.extra.IS_RESTORE"

.field public static final greylist EXTRA_IS_USING_CARRIER_AGGREGATION:Ljava/lang/String; = "isUsingCarrierAggregation"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_KEY_CONFIRM:Ljava/lang/String; = "android.intent.extra.KEY_CONFIRM"

.field public static final whitelist EXTRA_KEY_EVENT:Ljava/lang/String; = "android.intent.extra.KEY_EVENT"

.field public static final whitelist EXTRA_LOCALE_LIST:Ljava/lang/String; = "android.intent.extra.LOCALE_LIST"

.field public static final whitelist EXTRA_LOCAL_ONLY:Ljava/lang/String; = "android.intent.extra.LOCAL_ONLY"

.field public static final whitelist EXTRA_LOCUS_ID:Ljava/lang/String; = "android.intent.extra.LOCUS_ID"

.field public static final whitelist EXTRA_LONG_VERSION_CODE:Ljava/lang/String; = "android.intent.extra.LONG_VERSION_CODE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist EXTRA_LTE_EARFCN_RSRP_BOOST:Ljava/lang/String; = "LteEarfcnRsrpBoost"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist EXTRA_MANUAL:Ljava/lang/String; = "manual"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_MEDIA_RESOURCE_TYPE:Ljava/lang/String; = "android.intent.extra.MEDIA_RESOURCE_TYPE"

.field public static final greylist-max-o EXTRA_MEDIA_RESOURCE_TYPE_AUDIO_CODEC:I = 0x1

.field public static final greylist-max-o EXTRA_MEDIA_RESOURCE_TYPE_VIDEO_CODEC:I = 0x0

.field public static final whitelist EXTRA_METADATA_TEXT:Ljava/lang/String; = "android.intent.extra.METADATA_TEXT"

.field public static final whitelist EXTRA_MIME_TYPES:Ljava/lang/String; = "android.intent.extra.MIME_TYPES"

.field public static final greylist EXTRA_NETWORK_ID:Ljava/lang/String; = "networkId"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_NOT_UNKNOWN_SOURCE:Ljava/lang/String; = "android.intent.extra.NOT_UNKNOWN_SOURCE"

.field public static final greylist EXTRA_OPERATOR_ALPHA_LONG:Ljava/lang/String; = "operator-alpha-long"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist EXTRA_OPERATOR_ALPHA_SHORT:Ljava/lang/String; = "operator-alpha-short"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist EXTRA_OPERATOR_NUMERIC:Ljava/lang/String; = "operator-numeric"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_ORIGINATING_UID:Ljava/lang/String; = "android.intent.extra.ORIGINATING_UID"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_ORIGINATING_URI:Ljava/lang/String; = "android.intent.extra.ORIGINATING_URI"

.field public static final whitelist EXTRA_PACKAGES:Ljava/lang/String; = "android.intent.extra.PACKAGES"

.field public static final whitelist EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.intent.extra.PACKAGE_NAME"

.field public static final whitelist EXTRA_PERMISSION_GROUP_NAME:Ljava/lang/String; = "android.intent.extra.PERMISSION_GROUP_NAME"

.field public static final whitelist EXTRA_PERMISSION_NAME:Ljava/lang/String; = "android.intent.extra.PERMISSION_NAME"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PHONE_NUMBER:Ljava/lang/String; = "android.intent.extra.PHONE_NUMBER"

.field public static final whitelist EXTRA_PROCESS_TEXT:Ljava/lang/String; = "android.intent.extra.PROCESS_TEXT"

.field public static final whitelist EXTRA_PROCESS_TEXT_READONLY:Ljava/lang/String; = "android.intent.extra.PROCESS_TEXT_READONLY"

.field public static final blacklist EXTRA_QUARANTINED:Ljava/lang/String; = "android.intent.extra.quarantined"

.field public static final greylist EXTRA_QUICK_VIEW_ADVANCED:Ljava/lang/String; = "android.intent.extra.QUICK_VIEW_ADVANCED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_QUICK_VIEW_FEATURES:Ljava/lang/String; = "android.intent.extra.QUICK_VIEW_FEATURES"

.field public static final whitelist EXTRA_QUIET_MODE:Ljava/lang/String; = "android.intent.extra.QUIET_MODE"

.field public static final whitelist EXTRA_REASON:Ljava/lang/String; = "android.intent.extra.REASON"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EXTRA_REBROADCAST_ON_UNLOCK:Ljava/lang/String; = "rebroadcastOnUnlock"

.field public static final whitelist EXTRA_REFERRER:Ljava/lang/String; = "android.intent.extra.REFERRER"

.field public static final whitelist EXTRA_REFERRER_NAME:Ljava/lang/String; = "android.intent.extra.REFERRER_NAME"

.field public static final whitelist EXTRA_REMOTE_CALLBACK:Ljava/lang/String; = "android.intent.extra.REMOTE_CALLBACK"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_REMOTE_INTENT_TOKEN:Ljava/lang/String; = "android.intent.extra.remote_intent_token"

.field public static final greylist-max-o EXTRA_REMOVED_FOR_ALL_USERS:Ljava/lang/String; = "android.intent.extra.REMOVED_FOR_ALL_USERS"

.field public static final whitelist EXTRA_REPLACEMENT_EXTRAS:Ljava/lang/String; = "android.intent.extra.REPLACEMENT_EXTRAS"

.field public static final whitelist EXTRA_REPLACING:Ljava/lang/String; = "android.intent.extra.REPLACING"

.field public static final whitelist EXTRA_RESTRICTIONS_BUNDLE:Ljava/lang/String; = "android.intent.extra.restrictions_bundle"

.field public static final whitelist EXTRA_RESTRICTIONS_INTENT:Ljava/lang/String; = "android.intent.extra.restrictions_intent"

.field public static final whitelist EXTRA_RESTRICTIONS_LIST:Ljava/lang/String; = "android.intent.extra.restrictions_list"

.field public static final whitelist EXTRA_RESULT_NEEDED:Ljava/lang/String; = "android.intent.extra.RESULT_NEEDED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_RESULT_RECEIVER:Ljava/lang/String; = "android.intent.extra.RESULT_RECEIVER"

.field public static final whitelist EXTRA_RETURN_RESULT:Ljava/lang/String; = "android.intent.extra.RETURN_RESULT"

.field public static final whitelist EXTRA_ROLE_NAME:Ljava/lang/String; = "android.intent.extra.ROLE_NAME"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_SETTING_NAME:Ljava/lang/String; = "setting_name"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_SETTING_NEW_VALUE:Ljava/lang/String; = "new_value"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_SETTING_PREVIOUS_VALUE:Ljava/lang/String; = "previous_value"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_SETTING_RESTORED_FROM_SDK_INT:Ljava/lang/String; = "restored_from_sdk_int"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist EXTRA_SHORTCUT_ICON:Ljava/lang/String; = "android.intent.extra.shortcut.ICON"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_SHORTCUT_ICON_RESOURCE:Ljava/lang/String; = "android.intent.extra.shortcut.ICON_RESOURCE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_SHORTCUT_ID:Ljava/lang/String; = "android.intent.extra.shortcut.ID"

.field public static final whitelist EXTRA_SHORTCUT_INTENT:Ljava/lang/String; = "android.intent.extra.shortcut.INTENT"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_SHORTCUT_NAME:Ljava/lang/String; = "android.intent.extra.shortcut.NAME"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_SHOWING_ATTRIBUTION:Ljava/lang/String; = "android.intent.extra.SHOWING_ATTRIBUTION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EXTRA_SHOW_WIPE_PROGRESS:Ljava/lang/String; = "android.intent.extra.SHOW_WIPE_PROGRESS"

.field public static final whitelist EXTRA_SHUTDOWN_USERSPACE_ONLY:Ljava/lang/String; = "android.intent.extra.SHUTDOWN_USERSPACE_ONLY"

.field public static final greylist-max-o EXTRA_SIM_ACTIVATION_RESPONSE:Ljava/lang/String; = "android.intent.extra.SIM_ACTIVATION_RESPONSE"

.field public static final blacklist EXTRA_SIM_LOCKED_REASON:Ljava/lang/String; = "reason"

.field public static final blacklist EXTRA_SIM_STATE:Ljava/lang/String; = "ss"

.field public static final whitelist EXTRA_SPLIT_NAME:Ljava/lang/String; = "android.intent.extra.SPLIT_NAME"

.field public static final whitelist EXTRA_START_TIME:Ljava/lang/String; = "android.intent.extra.START_TIME"

.field public static final whitelist EXTRA_STREAM:Ljava/lang/String; = "android.intent.extra.STREAM"

.field public static final whitelist EXTRA_SUBJECT:Ljava/lang/String; = "android.intent.extra.SUBJECT"

.field public static final whitelist EXTRA_SUSPENDED_PACKAGE_EXTRAS:Ljava/lang/String; = "android.intent.extra.SUSPENDED_PACKAGE_EXTRAS"

.field public static final greylist EXTRA_SYSTEM_ID:Ljava/lang/String; = "systemId"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EXTRA_SYSTEM_UPDATE_UNINSTALL:Ljava/lang/String; = "android.intent.extra.SYSTEM_UPDATE_UNINSTALL"

.field public static final greylist-max-o EXTRA_TASK_ID:Ljava/lang/String; = "android.intent.extra.TASK_ID"

.field public static final whitelist EXTRA_TEMPLATE:Ljava/lang/String; = "android.intent.extra.TEMPLATE"

.field public static final whitelist EXTRA_TEXT:Ljava/lang/String; = "android.intent.extra.TEXT"

.field public static final greylist-max-o EXTRA_THERMAL_STATE:Ljava/lang/String; = "android.intent.extra.THERMAL_STATE"

.field public static final greylist-max-o EXTRA_THERMAL_STATE_EXCEEDED:I = 0x2

.field public static final greylist-max-o EXTRA_THERMAL_STATE_NORMAL:I = 0x0

.field public static final greylist-max-o EXTRA_THERMAL_STATE_WARNING:I = 0x1

.field public static final whitelist EXTRA_TIME:Ljava/lang/String; = "android.intent.extra.TIME"

.field public static final whitelist EXTRA_TIMEZONE:Ljava/lang/String; = "time-zone"

.field public static final greylist-max-o EXTRA_TIME_PREF_24_HOUR_FORMAT:Ljava/lang/String; = "android.intent.extra.TIME_PREF_24_HOUR_FORMAT"

.field public static final greylist-max-o EXTRA_TIME_PREF_VALUE_USE_12_HOUR:I = 0x0

.field public static final greylist-max-o EXTRA_TIME_PREF_VALUE_USE_24_HOUR:I = 0x1

.field public static final greylist-max-o EXTRA_TIME_PREF_VALUE_USE_LOCALE_DEFAULT:I = 0x2

.field public static final whitelist EXTRA_TITLE:Ljava/lang/String; = "android.intent.extra.TITLE"

.field public static final whitelist EXTRA_UID:Ljava/lang/String; = "android.intent.extra.UID"

.field public static final whitelist EXTRA_UNINSTALL_ALL_USERS:Ljava/lang/String; = "android.intent.extra.UNINSTALL_ALL_USERS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_UNKNOWN_INSTANT_APP:Ljava/lang/String; = "android.intent.extra.UNKNOWN_INSTANT_APP"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_USER:Ljava/lang/String; = "android.intent.extra.USER"

.field public static final whitelist EXTRA_USER_HANDLE:Ljava/lang/String; = "android.intent.extra.user_handle"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_USER_ID:Ljava/lang/String; = "android.intent.extra.USER_ID"

.field public static final whitelist EXTRA_USER_INITIATED:Ljava/lang/String; = "android.intent.extra.USER_INITIATED"

.field public static final greylist-max-o EXTRA_USER_REQUESTED_SHUTDOWN:Ljava/lang/String; = "android.intent.extra.USER_REQUESTED_SHUTDOWN"

.field public static final whitelist EXTRA_USE_STYLUS_MODE:Ljava/lang/String; = "android.intent.extra.USE_STYLUS_MODE"

.field public static final whitelist EXTRA_VERIFICATION_BUNDLE:Ljava/lang/String; = "android.intent.extra.VERIFICATION_BUNDLE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_VERSION_CODE:Ljava/lang/String; = "android.intent.extra.VERSION_CODE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EXTRA_VISIBILITY_ALLOW_LIST:Ljava/lang/String; = "android.intent.extra.VISIBILITY_ALLOW_LIST"

.field public static final greylist EXTRA_VOICE_RADIO_TECH:Ljava/lang/String; = "radioTechnology"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist EXTRA_VOICE_REG_STATE:Ljava/lang/String; = "voiceRegState"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist EXTRA_VOICE_ROAMING_TYPE:Ljava/lang/String; = "voiceRoamingType"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_WIPE_ESIMS:Ljava/lang/String; = "com.android.internal.intent.extra.WIPE_ESIMS"

.field public static final greylist-max-o EXTRA_WIPE_EXTERNAL_STORAGE:Ljava/lang/String; = "android.intent.extra.WIPE_EXTERNAL_STORAGE"

.field public static final whitelist FILL_IN_ACTION:I = 0x1

.field public static final whitelist FILL_IN_CATEGORIES:I = 0x4

.field public static final whitelist FILL_IN_CLIP_DATA:I = 0x80

.field public static final whitelist FILL_IN_COMPONENT:I = 0x8

.field public static final whitelist FILL_IN_DATA:I = 0x2

.field public static final whitelist FILL_IN_IDENTIFIER:I = 0x100

.field public static final whitelist FILL_IN_PACKAGE:I = 0x10

.field public static final whitelist FILL_IN_SELECTOR:I = 0x40

.field public static final whitelist FILL_IN_SOURCE_BOUNDS:I = 0x20

.field public static final whitelist FLAG_ACTIVITY_BROUGHT_TO_FRONT:I = 0x400000

.field public static final whitelist FLAG_ACTIVITY_CLEAR_TASK:I = 0x8000

.field public static final whitelist FLAG_ACTIVITY_CLEAR_TOP:I = 0x4000000

.field public static final whitelist FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET:I = 0x80000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_ACTIVITY_EXCLUDE_FROM_RECENTS:I = 0x800000

.field public static final whitelist FLAG_ACTIVITY_FORWARD_RESULT:I = 0x2000000

.field public static final whitelist FLAG_ACTIVITY_LAUNCHED_FROM_HISTORY:I = 0x100000

.field public static final whitelist FLAG_ACTIVITY_LAUNCH_ADJACENT:I = 0x1000

.field public static final whitelist FLAG_ACTIVITY_MATCH_EXTERNAL:I = 0x800

.field public static final whitelist FLAG_ACTIVITY_MULTIPLE_TASK:I = 0x8000000

.field public static final whitelist FLAG_ACTIVITY_NEW_DOCUMENT:I = 0x80000

.field public static final whitelist FLAG_ACTIVITY_NEW_TASK:I = 0x10000000

.field public static final whitelist FLAG_ACTIVITY_NO_ANIMATION:I = 0x10000

.field public static final whitelist FLAG_ACTIVITY_NO_HISTORY:I = 0x40000000

.field public static final whitelist FLAG_ACTIVITY_NO_USER_ACTION:I = 0x40000

.field public static final whitelist FLAG_ACTIVITY_PREVIOUS_IS_TOP:I = 0x1000000

.field public static final whitelist FLAG_ACTIVITY_REORDER_TO_FRONT:I = 0x20000

.field public static final whitelist FLAG_ACTIVITY_REQUIRE_DEFAULT:I = 0x200

.field public static final whitelist FLAG_ACTIVITY_REQUIRE_NON_BROWSER:I = 0x400

.field public static final whitelist FLAG_ACTIVITY_RESET_TASK_IF_NEEDED:I = 0x200000

.field public static final whitelist FLAG_ACTIVITY_RETAIN_IN_RECENTS:I = 0x2000

.field public static final whitelist FLAG_ACTIVITY_SINGLE_TOP:I = 0x20000000

.field public static final whitelist FLAG_ACTIVITY_TASK_ON_HOME:I = 0x4000

.field public static final whitelist FLAG_DEBUG_LOG_RESOLUTION:I = 0x8

.field public static final greylist-max-o FLAG_DEBUG_TRIAGED_MISSING:I = 0x100
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_DIRECT_BOOT_AUTO:I = 0x100

.field public static final whitelist FLAG_EXCLUDE_STOPPED_PACKAGES:I = 0x10

.field public static final whitelist FLAG_FROM_BACKGROUND:I = 0x4

.field public static final whitelist FLAG_GRANT_PERSISTABLE_URI_PERMISSION:I = 0x40

.field public static final whitelist FLAG_GRANT_PREFIX_URI_PERMISSION:I = 0x80

.field public static final whitelist FLAG_GRANT_READ_URI_PERMISSION:I = 0x1

.field public static final whitelist FLAG_GRANT_WRITE_URI_PERMISSION:I = 0x2

.field public static final greylist-max-o FLAG_IGNORE_EPHEMERAL:I = -0x80000000

.field public static final whitelist FLAG_INCLUDE_STOPPED_PACKAGES:I = 0x20

.field public static final greylist-max-o FLAG_RECEIVER_BOOT_UPGRADE:I = 0x2000000

.field public static final greylist-max-o FLAG_RECEIVER_EXCLUDE_BACKGROUND:I = 0x800000

.field public static final whitelist FLAG_RECEIVER_FOREGROUND:I = 0x10000000

.field public static final greylist-max-o FLAG_RECEIVER_FROM_SHELL:I = 0x400000

.field public static final whitelist FLAG_RECEIVER_INCLUDE_BACKGROUND:I = 0x1000000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_RECEIVER_NO_ABORT:I = 0x8000000

.field public static final blacklist FLAG_RECEIVER_OFFLOAD:I = -0x80000000

.field public static final blacklist FLAG_RECEIVER_OFFLOAD_FOREGROUND:I = 0x800

.field public static final whitelist FLAG_RECEIVER_REGISTERED_ONLY:I = 0x40000000

.field public static final whitelist FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT:I = 0x4000000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_RECEIVER_REPLACE_PENDING:I = 0x20000000

.field public static final whitelist FLAG_RECEIVER_VISIBLE_TO_INSTANT_APPS:I = 0x200000

.field public static final greylist-max-o IMMUTABLE_FLAGS:I = 0xc3

.field private static final blacklist LOCAL_FLAG_FROM_COPY:I = 0x1

.field private static final blacklist LOCAL_FLAG_FROM_PARCEL:I = 0x2

.field private static final blacklist LOCAL_FLAG_FROM_PROTECTED_COMPONENT:I = 0x4

.field public static final blacklist LOCAL_FLAG_FROM_SYSTEM:I = 0x20

.field private static final blacklist LOCAL_FLAG_FROM_URI:I = 0x10

.field private static final blacklist LOCAL_FLAG_TRUSTED_CREATOR_TOKEN_PRESENT:I = 0x40

.field private static final blacklist LOCAL_FLAG_UNFILTERED_EXTRAS:I = 0x8

.field private static final blacklist MARK_TRUSTED_TOKEN_PRESENT_ACTION:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist METADATA_DOCK_HOME:Ljava/lang/String; = "android.dock_home"

.field public static final whitelist METADATA_SETUP_VERSION:Ljava/lang/String; = "android.SETUP_VERSION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SIM_ABSENT_ON_PERM_DISABLED:Ljava/lang/String; = "PERM_DISABLED"

.field public static final blacklist SIM_LOCKED_NETWORK:Ljava/lang/String; = "NETWORK"

.field public static final blacklist SIM_LOCKED_ON_PIN:Ljava/lang/String; = "PIN"

.field public static final blacklist SIM_LOCKED_ON_PUK:Ljava/lang/String; = "PUK"

.field public static final blacklist SIM_STATE_ABSENT:Ljava/lang/String; = "ABSENT"

.field public static final blacklist SIM_STATE_CARD_IO_ERROR:Ljava/lang/String; = "CARD_IO_ERROR"

.field public static final blacklist SIM_STATE_CARD_RESTRICTED:Ljava/lang/String; = "CARD_RESTRICTED"

.field public static final blacklist SIM_STATE_IMSI:Ljava/lang/String; = "IMSI"

.field public static final blacklist SIM_STATE_LOADED:Ljava/lang/String; = "LOADED"

.field public static final blacklist SIM_STATE_LOCKED:Ljava/lang/String; = "LOCKED"

.field public static final blacklist SIM_STATE_NOT_READY:Ljava/lang/String; = "NOT_READY"

.field public static final blacklist SIM_STATE_PRESENT:Ljava/lang/String; = "PRESENT"

.field public static final blacklist SIM_STATE_READY:Ljava/lang/String; = "READY"

.field public static final blacklist SIM_STATE_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field private static final blacklist TAG:Ljava/lang/String; = "Intent"

.field private static final greylist-max-o TAG_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final greylist-max-o TAG_EXTRA:Ljava/lang/String; = "extra"

.field public static final whitelist URI_ALLOW_UNSAFE:I = 0x4

.field public static final whitelist URI_ANDROID_APP_SCHEME:I = 0x2

.field public static final whitelist URI_INTENT_SCHEME:I = 0x1


# instance fields
.field private greylist-max-o mAction:Ljava/lang/String;

.field private greylist-max-o mCategories:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mClipData:Landroid/content/ClipData;

.field private greylist-max-o mComponent:Landroid/content/ComponentName;

.field private greylist-max-o mContentUserHint:I

.field private blacklist mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

.field private greylist-max-o mData:Landroid/net/Uri;

.field private blacklist mExtendedFlags:I

.field private greylist mExtras:Landroid/os/Bundle;

.field private greylist-max-o mFlags:I

.field private blacklist mIdentifier:Ljava/lang/String;

.field private greylist-max-o mLaunchToken:Ljava/lang/String;

.field private blacklist mLocalFlags:I

.field private blacklist mOriginalIntent:Landroid/content/Intent;

.field private greylist-max-o mPackage:Ljava/lang/String;

.field private greylist-max-o mSelector:Landroid/content/Intent;

.field private greylist-max-o mSourceBounds:Landroid/graphics/Rect;

.field private greylist-max-o mType:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 8014
    const-class v0, Landroid/content/Intent;

    sput-object v0, Landroid/os/Bundle;->intentClass:Ljava/lang/Class;

    .line 12663
    new-instance v0, Landroid/content/Intent$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/content/Intent$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/content/Intent;->MARK_TRUSTED_TOKEN_PRESENT_ACTION:Ljava/util/function/Consumer;

    .line 12667
    new-instance v0, Landroid/content/Intent$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/content/Intent$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroid/content/Intent;->ENABLE_TOKEN_VERIFY_ACTION:Ljava/util/function/Consumer;

    .line 12868
    new-instance v0, Landroid/content/Intent$1;

    invoke-direct {v0}, Landroid/content/Intent$1;-><init>()V

    sput-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 8058
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8035
    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 8059
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 8199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8035
    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 8200
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 8201
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Intent;)V
    .registers 3

    .line 8065
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;I)V

    .line 8066
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/Intent;I)V
    .registers 5

    .line 8068
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8035
    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 8069
    iget-object v0, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    .line 8070
    iget-object v0, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 8071
    iget-object v0, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 8072
    iget-object v0, p1, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    .line 8073
    iget-object v0, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 8074
    iget-object v0, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 8075
    iget-object v0, p1, Landroid/content/Intent;->mOriginalIntent:Landroid/content/Intent;

    iput-object v0, p0, Landroid/content/Intent;->mOriginalIntent:Landroid/content/Intent;

    .line 8076
    iget-object v0, p1, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    iput-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    .line 8078
    iget-object v0, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_33

    .line 8079
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 8084
    :cond_33
    iget v0, p1, Landroid/content/Intent;->mLocalFlags:I

    iput v0, p0, Landroid/content/Intent;->mLocalFlags:I

    .line 8085
    iget v0, p0, Landroid/content/Intent;->mLocalFlags:I

    const/4 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/Intent;->mLocalFlags:I

    .line 8087
    if-eq p2, v1, :cond_97

    .line 8088
    iget v0, p1, Landroid/content/Intent;->mFlags:I

    iput v0, p0, Landroid/content/Intent;->mFlags:I

    .line 8089
    iget v0, p1, Landroid/content/Intent;->mExtendedFlags:I

    iput v0, p0, Landroid/content/Intent;->mExtendedFlags:I

    .line 8090
    iget v0, p1, Landroid/content/Intent;->mContentUserHint:I

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 8091
    iget-object v0, p1, Landroid/content/Intent;->mLaunchToken:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mLaunchToken:Ljava/lang/String;

    .line 8092
    iget-object v0, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_5c

    .line 8093
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    .line 8095
    :cond_5c
    iget-object v0, p1, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v0, :cond_69

    .line 8096
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    .line 8099
    :cond_69
    const/4 v0, 0x2

    if-eq p2, v0, :cond_87

    .line 8100
    iget-object p2, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz p2, :cond_79

    .line 8101
    new-instance p2, Landroid/os/Bundle;

    iget-object v0, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {p2, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object p2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 8103
    :cond_79
    iget-object p2, p1, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz p2, :cond_97

    .line 8104
    new-instance p2, Landroid/content/ClipData;

    iget-object p1, p1, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-direct {p2, p1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipData;)V

    iput-object p2, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    goto :goto_97

    .line 8107
    :cond_87
    iget-object p2, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz p2, :cond_97

    iget-object p1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Bundle;->isDefinitelyEmpty()Z

    move-result p1

    if-nez p1, :cond_97

    .line 8108
    sget-object p1, Landroid/os/Bundle;->STRIPPED:Landroid/os/Bundle;

    iput-object p1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 8115
    :cond_97
    :goto_97
    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 12879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8035
    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 12882
    const/4 v0, 0x2

    iput v0, p0, Landroid/content/Intent;->mLocalFlags:I

    .line 12883
    invoke-virtual {p0, p1}, Landroid/content/Intent;->readFromParcel(Landroid/os/Parcel;)V

    .line 12884
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3

    .line 8158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8035
    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 8159
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 8160
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4

    .line 8178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8035
    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 8179
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 8180
    iput-object p2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 8181
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 8227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8035
    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 8228
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 8229
    iput-object p2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 8230
    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, p3, p4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 8231
    return-void
.end method

.method private blacklist collectNestedIntentKeysRecur(Ljava/util/Set;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/Intent;",
            ">;Z)V"
        }
    .end annotation

    .line 12573
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v0, :cond_70

    if-nez p2, :cond_11

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isParcelled()Z

    move-result v0

    if-nez v0, :cond_70

    :cond_11
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_70

    .line 12574
    invoke-virtual {p0, v2}, Landroid/content/Intent;->addExtendedFlags(I)Landroid/content/Intent;

    .line 12575
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_70

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 12583
    if-nez p2, :cond_43

    :try_start_34
    iget-object v5, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->isValueParceled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3d

    goto :goto_43

    .line 12586
    :cond_3d
    nop

    .line 12587
    invoke-virtual {p0, v2}, Landroid/content/Intent;->removeExtendedFlags(I)V

    move-object v5, v3

    goto :goto_49

    .line 12584
    :cond_43
    :goto_43
    iget-object v5, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5
    :try_end_49
    .catch Landroid/os/BadParcelableException; {:try_start_34 .. :try_end_49} :catch_4a

    .line 12594
    :goto_49
    goto :goto_4c

    .line 12589
    :catch_4a
    move-exception v5

    .line 12593
    move-object v5, v3

    .line 12595
    :goto_4c
    instance-of v6, v5, Landroid/content/Intent;

    if-eqz v6, :cond_5c

    check-cast v5, Landroid/content/Intent;

    .line 12596
    new-instance v6, Landroid/content/Intent$NestedIntentKey;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v4, v1, v3}, Landroid/content/Intent$NestedIntentKey;-><init>(ILjava/lang/String;ILandroid/content/Intent-IA;)V

    invoke-direct {p0, v5, p1, v6, p2}, Landroid/content/Intent;->handleNestedIntent(Landroid/content/Intent;Ljava/util/Set;Landroid/content/Intent$NestedIntentKey;Z)V

    goto :goto_6f

    .line 12599
    :cond_5c
    instance-of v6, v5, [Landroid/os/Parcelable;

    if-eqz v6, :cond_66

    check-cast v5, [Landroid/os/Parcelable;

    .line 12600
    invoke-direct {p0, v5, v4, p1, p2}, Landroid/content/Intent;->handleParcelableArray([Landroid/os/Parcelable;Ljava/lang/String;Ljava/util/Set;Z)V

    goto :goto_6f

    .line 12601
    :cond_66
    instance-of v6, v5, Ljava/util/ArrayList;

    if-eqz v6, :cond_6f

    check-cast v5, Ljava/util/ArrayList;

    .line 12602
    invoke-direct {p0, v5, v4, p1, p2}, Landroid/content/Intent;->handleParcelableList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;Z)V

    .line 12604
    :cond_6f
    :goto_6f
    goto :goto_26

    .line 12610
    :cond_70
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_7c

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isDefinitelyEmpty()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 12611
    :cond_7c
    invoke-virtual {p0, v2}, Landroid/content/Intent;->addExtendedFlags(I)Landroid/content/Intent;

    .line 12614
    :cond_7f
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_a9

    .line 12615
    nop

    :goto_84
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-ge v1, v0, :cond_a9

    .line 12616
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    iget-object v0, v0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 12617
    if-eqz v0, :cond_a6

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a6

    .line 12618
    new-instance v2, Landroid/content/Intent$NestedIntentKey;

    const/16 v4, 0x8

    invoke-direct {v2, v4, v3, v1, v3}, Landroid/content/Intent$NestedIntentKey;-><init>(ILjava/lang/String;ILandroid/content/Intent-IA;)V

    invoke-direct {p0, v0, p1, v2, p2}, Landroid/content/Intent;->handleNestedIntent(Landroid/content/Intent;Ljava/util/Set;Landroid/content/Intent$NestedIntentKey;Z)V

    .line 12615
    :cond_a6
    add-int/lit8 v1, v1, 0x1

    goto :goto_84

    .line 12624
    :cond_a9
    return-void
.end method

.method public static whitelist createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .registers 3

    .line 1074
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;
    .registers 6

    .line 1103
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CHOOSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1104
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1105
    if-eqz p1, :cond_13

    .line 1106
    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1109
    :cond_13
    if-eqz p2, :cond_1a

    .line 1110
    const-string p1, "android.intent.extra.CHOOSER_RESULT_INTENT_SENDER"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1114
    :cond_1a
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0xc3

    .line 1117
    if-eqz p1, :cond_59

    .line 1118
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p2

    .line 1119
    if-nez p2, :cond_51

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_51

    .line 1120
    new-instance p2, Landroid/content/ClipData$Item;

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 1122
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_48

    .line 1123
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    goto :goto_4a

    .line 1125
    :cond_48
    new-array v1, v2, [Ljava/lang/String;

    .line 1127
    :goto_4a
    new-instance p0, Landroid/content/ClipData;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1, p2}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    move-object p2, p0

    .line 1129
    :cond_51
    if-eqz p2, :cond_59

    .line 1130
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 1131
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1135
    :cond_59
    return-object v0
.end method

.method private static blacklist decodeInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3

    .line 8748
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 8749
    :catch_5
    move-exception v0

    .line 8751
    if-eqz p0, :cond_22

    :try_start_8
    const-string v1, "0x"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 8754
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_1f} :catch_20

    return-object p0

    .line 8756
    :catch_20
    move-exception p0

    goto :goto_23

    .line 8758
    :cond_22
    nop

    .line 8759
    :goto_23
    throw v0
.end method

.method public static greylist-max-o dockStateToString(I)Ljava/lang/String;
    .registers 1

    .line 13645
    packed-switch p0, :pswitch_data_18

    .line 13657
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 13647
    :pswitch_8
    const-string p0, "EXTRA_DOCK_STATE_HE_DESK"

    return-object p0

    .line 13649
    :pswitch_b
    const-string p0, "EXTRA_DOCK_STATE_LE_DESK"

    return-object p0

    .line 13651
    :pswitch_e
    const-string p0, "EXTRA_DOCK_STATE_CAR"

    return-object p0

    .line 13653
    :pswitch_11
    const-string p0, "EXTRA_DOCK_STATE_DESK"

    return-object p0

    .line 13655
    :pswitch_14
    const-string p0, "EXTRA_DOCK_STATE_UNDOCKED"

    return-object p0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private blacklist dumpDebugWithoutFieldId(Landroid/util/proto/ProtoOutputStream;ZZZZ)V
    .registers 10

    .line 12198
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 12199
    const-wide v0, 0x10900000001L

    iget-object v2, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 12201
    :cond_e
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_2d

    .line 12202
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 12203
    const-wide v2, 0x20900000002L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 12204
    goto :goto_18

    .line 12206
    :cond_2d
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_46

    .line 12207
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz p2, :cond_3a

    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    :cond_3a
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3e
    const-wide v1, 0x10900000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 12209
    :cond_46
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v0, :cond_54

    .line 12210
    const-wide v0, 0x10900000004L

    iget-object v2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 12212
    :cond_54
    iget-object v0, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_62

    .line 12213
    const-wide v0, 0x1090000000dL

    iget-object v2, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 12215
    :cond_62
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    const-string v1, "0x"

    if-eqz v0, :cond_87

    .line 12216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/content/Intent;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v2, 0x10900000005L

    invoke-virtual {p1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 12218
    :cond_87
    iget v0, p0, Landroid/content/Intent;->mExtendedFlags:I

    if-eqz v0, :cond_aa

    .line 12219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/Intent;->mExtendedFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x1090000000eL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 12221
    :cond_aa
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v0, :cond_b8

    .line 12222
    const-wide v0, 0x10900000006L

    iget-object v2, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 12224
    :cond_b8
    if-eqz p3, :cond_c8

    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_c8

    .line 12225
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    const-wide v1, 0x10b00000007L

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 12227
    :cond_c8
    iget-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_da

    .line 12228
    iget-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000008L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 12230
    :cond_da
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_fc

    .line 12231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12232
    iget-object v1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz p5, :cond_ec

    if-eqz p2, :cond_ea

    goto :goto_ec

    :cond_ea
    const/4 v2, 0x0

    goto :goto_ed

    :cond_ec
    :goto_ec
    const/4 v2, 0x1

    :goto_ed
    invoke-virtual {v1, v0, v2}, Landroid/content/ClipData;->toShortString(Ljava/lang/StringBuilder;Z)V

    .line 12233
    const-wide v1, 0x10900000009L

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 12235
    :cond_fc
    if-eqz p4, :cond_110

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_110

    .line 12236
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->toShortString()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x1090000000aL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 12238
    :cond_110
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    if-eqz v0, :cond_11e

    .line 12239
    const-wide v0, 0x1050000000bL

    iget v2, p0, Landroid/content/Intent;->mContentUserHint:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 12241
    :cond_11e
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v0, :cond_130

    .line 12242
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object p2

    const-wide p3, 0x1090000000cL

    invoke-virtual {p1, p3, p4, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 12244
    :cond_130
    return-void
.end method

.method private blacklist extractIntentFromKey(Landroid/content/Intent$NestedIntentKey;)Landroid/content/Intent;
    .registers 6

    .line 12719
    invoke-static {p1}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmType(Landroid/content/Intent$NestedIntentKey;)I

    move-result v0

    const-class v1, Landroid/content/Intent;

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_88

    goto/16 :goto_86

    .line 12738
    :sswitch_c
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-nez v0, :cond_11

    return-object v2

    .line 12739
    :cond_11
    invoke-static {p1}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmIndex(Landroid/content/Intent$NestedIntentKey;)I

    move-result v0

    iget-object v1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_86

    .line 12740
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-static {p1}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmIndex(Landroid/content/Intent$NestedIntentKey;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    .line 12741
    if-eqz p1, :cond_86

    .line 12742
    iget-object p1, p1, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    return-object p1

    .line 12730
    :sswitch_2c
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_31

    return-object v2

    .line 12731
    :cond_31
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static {p1}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmKey(Landroid/content/Intent$NestedIntentKey;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 12733
    if-eqz v0, :cond_86

    invoke-static {p1}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmIndex(Landroid/content/Intent$NestedIntentKey;)I

    move-result v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_86

    .line 12734
    invoke-static {p1}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmIndex(Landroid/content/Intent$NestedIntentKey;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    return-object p1

    .line 12723
    :sswitch_52
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_57

    return-object v2

    .line 12724
    :cond_57
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static {p1}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmKey(Landroid/content/Intent$NestedIntentKey;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    .line 12725
    if-eqz v0, :cond_86

    invoke-static {p1}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmIndex(Landroid/content/Intent$NestedIntentKey;)I

    move-result v1

    array-length v3, v0

    if-ge v1, v3, :cond_86

    .line 12726
    invoke-static {p1}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmIndex(Landroid/content/Intent$NestedIntentKey;)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1

    .line 12721
    :sswitch_73
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_78

    goto :goto_85

    :cond_78
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static {p1}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmKey(Landroid/content/Intent$NestedIntentKey;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/content/Intent;

    :goto_85
    return-object v2

    .line 12747
    :cond_86
    :goto_86
    return-object v2

    nop

    :sswitch_data_88
    .sparse-switch
        0x1 -> :sswitch_73
        0x2 -> :sswitch_52
        0x4 -> :sswitch_2c
        0x8 -> :sswitch_c
    .end sparse-switch
.end method

.method private blacklist fillInCreatorTokenInfo(Landroid/content/Intent$CreatorTokenInfo;I)V
    .registers 8

    .line 11873
    if-eqz p1, :cond_87

    invoke-static {p1}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fgetmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;)Landroid/util/ArraySet;

    move-result-object v0

    if-eqz v0, :cond_87

    .line 11874
    iget-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    if-nez v0, :cond_14

    .line 11875
    new-instance v0, Landroid/content/Intent$CreatorTokenInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/Intent$CreatorTokenInfo;-><init>(Landroid/content/Intent-IA;)V

    iput-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    .line 11877
    :cond_14
    invoke-static {p1}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fgetmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;)Landroid/util/ArraySet;

    move-result-object p1

    .line 11879
    iget-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    invoke-static {v0}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fgetmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;)Landroid/util/ArraySet;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 11880
    iget-object p2, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    invoke-static {p2, v0}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fputmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;Landroid/util/ArraySet;)V

    goto :goto_87

    .line 11883
    :cond_2b
    and-int/lit16 p2, p2, 0x80

    const/16 v0, 0x8

    if-nez p2, :cond_51

    .line 11885
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    .line 11886
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 11887
    const/4 v2, 0x0

    :goto_3b
    if-ge v2, v1, :cond_4f

    .line 11888
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent$NestedIntentKey;

    .line 11889
    invoke-static {v3}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmType(Landroid/content/Intent$NestedIntentKey;)I

    move-result v4

    if-eq v4, v0, :cond_4c

    .line 11890
    invoke-virtual {p2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 11887
    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 11893
    :cond_4f
    move-object p1, p2

    goto :goto_7e

    .line 11896
    :cond_51
    iget-object p2, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    invoke-static {p2}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fgetmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;)Landroid/util/ArraySet;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    .line 11897
    add-int/lit8 p2, p2, -0x1

    :goto_5d
    if-ltz p2, :cond_7d

    .line 11898
    iget-object v1, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    invoke-static {v1}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fgetmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent$NestedIntentKey;

    .line 11899
    invoke-static {v1}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmType(Landroid/content/Intent$NestedIntentKey;)I

    move-result v1

    if-ne v1, v0, :cond_7a

    .line 11900
    iget-object v1, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    invoke-static {v1}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fgetmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 11897
    :cond_7a
    add-int/lit8 p2, p2, -0x1

    goto :goto_5d

    .line 11903
    :cond_7d
    nop

    .line 11905
    :goto_7e
    iget-object p2, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    invoke-static {p2}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fgetmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;)Landroid/util/ArraySet;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 11908
    :cond_87
    :goto_87
    return-void
.end method

.method private blacklist forEachNestedCreatorToken(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Landroid/content/Intent;",
            ">;",
            "Ljava/util/function/Consumer<",
            "-",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 12697
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_9

    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-nez v0, :cond_9

    return-void

    .line 12699
    :cond_9
    iget-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    invoke-static {v0}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fgetmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;)Landroid/util/ArraySet;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 12700
    iget-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    invoke-static {v0}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fgetmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 12701
    const/4 v1, 0x0

    :goto_20
    if-ge v1, v0, :cond_4c

    .line 12702
    iget-object v2, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    invoke-static {v2}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fgetmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent$NestedIntentKey;

    .line 12703
    invoke-direct {p0, v2}, Landroid/content/Intent;->extractIntentFromKey(Landroid/content/Intent$NestedIntentKey;)Landroid/content/Intent;

    move-result-object v3

    .line 12705
    if-eqz v3, :cond_40

    .line 12706
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 12707
    invoke-virtual {v3, p1}, Landroid/content/Intent;->forEachNestedCreatorToken(Ljava/util/function/Consumer;)V

    .line 12708
    if-eqz p2, :cond_49

    .line 12709
    invoke-interface {p2, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_49

    .line 12712
    :cond_40
    const-string v3, "Intent"

    invoke-direct {p0, v2}, Landroid/content/Intent;->getLogMessageForKey(Landroid/content/Intent$NestedIntentKey;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12701
    :cond_49
    :goto_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 12716
    :cond_4c
    return-void
.end method

.method public static whitelist getIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8320
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist getIntentOld(Ljava/lang/String;)Landroid/content/Intent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 8582
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/content/Intent;->getIntentOld(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    .line 8583
    iget v0, p0, Landroid/content/Intent;->mLocalFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/content/Intent;->mLocalFlags:I

    .line 8584
    return-object p0
.end method

.method private static greylist-max-o getIntentOld(Ljava/lang/String;I)Landroid/content/Intent;
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 8590
    move-object/from16 v1, p0

    const/16 v0, 0x23

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 8591
    const-string v2, "android.intent.action.VIEW"

    if-ltz v0, :cond_1da

    .line 8592
    nop

    .line 8593
    nop

    .line 8594
    nop

    .line 8596
    add-int/lit8 v3, v0, 0x1

    .line 8598
    const-string v4, "action("

    const/4 v5, 0x0

    const/4 v6, 0x7

    invoke-virtual {v1, v3, v4, v5, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    const/16 v7, 0x29

    const/4 v8, 0x1

    if-eqz v4, :cond_2c

    .line 8599
    nop

    .line 8600
    add-int/lit8 v3, v3, 0x7

    .line 8601
    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 8602
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 8603
    add-int/2addr v4, v8

    move v9, v8

    goto :goto_31

    .line 8598
    :cond_2c
    const/4 v4, 0x0

    move-object v9, v4

    move v4, v3

    move-object v3, v9

    move v9, v5

    .line 8606
    :goto_31
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8608
    const-string v3, "categories("

    const/16 v11, 0xb

    invoke-virtual {v1, v4, v3, v5, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    const/16 v11, 0x21

    if-eqz v3, :cond_63

    .line 8609
    nop

    .line 8610
    add-int/lit8 v4, v4, 0xb

    .line 8611
    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 8612
    :goto_49
    if-ge v4, v3, :cond_60

    .line 8613
    invoke-virtual {v1, v11, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    .line 8614
    if-ltz v9, :cond_53

    if-le v9, v3, :cond_54

    :cond_53
    move v9, v3

    .line 8615
    :cond_54
    if-ge v4, v9, :cond_5d

    .line 8616
    invoke-virtual {v1, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 8618
    :cond_5d
    add-int/lit8 v4, v9, 0x1

    .line 8619
    goto :goto_49

    .line 8620
    :cond_60
    add-int/lit8 v4, v3, 0x1

    move v9, v8

    .line 8623
    :cond_63
    const-string/jumbo v3, "type("

    const/4 v12, 0x5

    invoke-virtual {v1, v4, v3, v5, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 8624
    nop

    .line 8625
    add-int/lit8 v4, v4, 0x5

    .line 8626
    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 8627
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 8628
    add-int/lit8 v4, v3, 0x1

    move v9, v8

    .line 8631
    :cond_7d
    const-string/jumbo v3, "launchFlags("

    const/16 v12, 0xc

    invoke-virtual {v1, v4, v3, v5, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 8632
    nop

    .line 8633
    add-int/lit8 v4, v4, 0xc

    .line 8634
    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 8635
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/Intent;->decodeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v10, Landroid/content/Intent;->mFlags:I

    .line 8636
    and-int/lit8 v4, p1, 0x4

    if-nez v4, :cond_a7

    .line 8637
    iget v4, v10, Landroid/content/Intent;->mFlags:I

    and-int/lit16 v4, v4, -0xc4

    iput v4, v10, Landroid/content/Intent;->mFlags:I

    .line 8639
    :cond_a7
    add-int/lit8 v4, v3, 0x1

    move v9, v8

    .line 8642
    :cond_aa
    const-string v3, "component("

    const/16 v12, 0xa

    invoke-virtual {v1, v4, v3, v5, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_d6

    .line 8643
    nop

    .line 8644
    add-int/lit8 v4, v4, 0xa

    .line 8645
    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 8646
    invoke-virtual {v1, v11, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    .line 8647
    if-ltz v9, :cond_d3

    if-ge v9, v3, :cond_d3

    .line 8648
    invoke-virtual {v1, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 8649
    add-int/2addr v9, v8

    invoke-virtual {v1, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 8650
    new-instance v12, Landroid/content/ComponentName;

    invoke-direct {v12, v4, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v12, v10, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 8652
    :cond_d3
    add-int/lit8 v4, v3, 0x1

    move v9, v8

    .line 8655
    :cond_d6
    const-string v3, "extras("

    invoke-virtual {v1, v4, v3, v5, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_1bf

    .line 8656
    nop

    .line 8657
    add-int/2addr v4, v6

    .line 8659
    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 8660
    const/4 v6, -0x1

    if-eq v3, v6, :cond_1b7

    .line 8663
    :goto_e7
    if-ge v4, v3, :cond_1b5

    .line 8665
    const/16 v9, 0x3d

    invoke-virtual {v1, v9, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    .line 8666
    add-int/lit8 v12, v4, 0x1

    if-le v9, v12, :cond_1ad

    if-ge v4, v3, :cond_1ad

    .line 8669
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 8670
    nop

    .line 8671
    invoke-virtual {v1, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 8672
    add-int/lit8 v9, v9, 0x1

    .line 8675
    invoke-virtual {v1, v11, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    .line 8676
    if-eq v13, v6, :cond_108

    if-lt v13, v3, :cond_109

    :cond_108
    move v13, v3

    .line 8677
    :cond_109
    const-string v14, "EXTRA missing \'!\'"

    if-ge v9, v13, :cond_1a7

    .line 8678
    invoke-virtual {v1, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 8679
    nop

    .line 8682
    iget-object v15, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v15, :cond_11d

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    iput-object v15, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 8686
    :cond_11d
    sparse-switch v4, :sswitch_data_1e4

    .line 8715
    :try_start_120
    new-instance v0, Ljava/net/URISyntaxException;

    goto/16 :goto_199

    .line 8712
    :sswitch_124
    iget-object v4, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static {v9}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v9

    invoke-virtual {v4, v12, v9}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 8713
    goto :goto_182

    .line 8709
    :sswitch_12e
    iget-object v4, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v4, v12, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 8710
    goto :goto_182

    .line 8706
    :sswitch_138
    iget-object v4, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v12, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8707
    goto :goto_182

    .line 8703
    :sswitch_142
    iget-object v4, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {v4, v12, v8}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 8704
    goto :goto_182

    .line 8700
    :sswitch_14c
    iget-object v4, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v4, v12, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 8701
    goto :goto_182

    .line 8697
    :sswitch_156
    iget-object v4, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static {v9}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v4, v12, v8}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    .line 8698
    goto :goto_182

    .line 8694
    :sswitch_164
    iget-object v4, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static {v9}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v8

    invoke-virtual {v4, v12, v8}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 8695
    goto :goto_182

    .line 8688
    :sswitch_16e
    iget-object v4, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static {v9}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v12, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8689
    goto :goto_182

    .line 8691
    :sswitch_178
    iget-object v4, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v4, v12, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_181
    .catch Ljava/lang/NumberFormatException; {:try_start_120 .. :try_end_181} :catch_197

    .line 8692
    nop

    .line 8719
    :goto_182
    nop

    .line 8721
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 8722
    if-ne v4, v7, :cond_18a

    goto :goto_1b5

    .line 8723
    :cond_18a
    if-ne v4, v11, :cond_191

    .line 8724
    add-int/lit8 v4, v13, 0x1

    .line 8725
    const/4 v8, 0x1

    goto/16 :goto_e7

    .line 8723
    :cond_191
    new-instance v0, Ljava/net/URISyntaxException;

    invoke-direct {v0, v1, v14, v13}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 8717
    :catch_197
    move-exception v0

    goto :goto_19f

    .line 8715
    :goto_199
    :try_start_199
    const-string v2, "EXTRA has unknown type"

    invoke-direct {v0, v1, v2, v13}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0
    :try_end_19f
    .catch Ljava/lang/NumberFormatException; {:try_start_199 .. :try_end_19f} :catch_197

    .line 8718
    :goto_19f
    new-instance v0, Ljava/net/URISyntaxException;

    const-string v2, "EXTRA value can\'t be parsed"

    invoke-direct {v0, v1, v2, v13}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 8677
    :cond_1a7
    new-instance v0, Ljava/net/URISyntaxException;

    invoke-direct {v0, v1, v14, v9}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 8667
    :cond_1ad
    new-instance v0, Ljava/net/URISyntaxException;

    const-string v2, "EXTRA missing \'=\'"

    invoke-direct {v0, v1, v2, v4}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 8728
    :cond_1b5
    :goto_1b5
    const/4 v8, 0x1

    goto :goto_1c0

    .line 8660
    :cond_1b7
    new-instance v0, Ljava/net/URISyntaxException;

    const-string v2, "EXTRA missing trailing \')\'"

    invoke-direct {v0, v1, v2, v4}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 8655
    :cond_1bf
    move v8, v9

    .line 8728
    :goto_1c0
    if-eqz v8, :cond_1cd

    .line 8729
    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v10, Landroid/content/Intent;->mData:Landroid/net/Uri;

    goto :goto_1d3

    .line 8731
    :cond_1cd
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v10, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 8734
    :goto_1d3
    iget-object v0, v10, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-nez v0, :cond_1d9

    .line 8736
    iput-object v2, v10, Landroid/content/Intent;->mAction:Ljava/lang/String;

    .line 8739
    :cond_1d9
    goto :goto_1e3

    .line 8740
    :cond_1da
    new-instance v10, Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v10, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 8743
    :goto_1e3
    return-object v10

    :sswitch_data_1e4
    .sparse-switch
        0x42 -> :sswitch_178
        0x53 -> :sswitch_16e
        0x62 -> :sswitch_164
        0x63 -> :sswitch_156
        0x64 -> :sswitch_14c
        0x66 -> :sswitch_142
        0x69 -> :sswitch_138
        0x6c -> :sswitch_12e
        0x73 -> :sswitch_124
    .end sparse-switch
.end method

.method private blacklist getLogMessageForKey(Landroid/content/Intent$NestedIntentKey;)Ljava/lang/String;
    .registers 7

    .line 12751
    invoke-static {p1}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmType(Landroid/content/Intent$NestedIntentKey;)I

    move-result v0

    const-string/jumbo v1, "} is not an intent."

    const-class v2, Landroid/content/Intent;

    const-string v3, "The key {"

    sparse-switch v0, :sswitch_data_128

    .line 12777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown key type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmType(Landroid/content/Intent$NestedIntentKey;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 12769
    :sswitch_26
    invoke-static {p1}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmIndex(Landroid/content/Intent$NestedIntentKey;)I

    move-result v0

    iget-object v1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_5a

    .line 12770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index out of range for clipData items. index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmIndex(Landroid/content/Intent$NestedIntentKey;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ". item counts: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    .line 12771
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12770
    return-object p1

    .line 12773
    :cond_5a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clipData items at index ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmIndex(Landroid/content/Intent$NestedIntentKey;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "] is null or does not contain an intent."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 12762
    :sswitch_78
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static {p1}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmKey(Landroid/content/Intent$NestedIntentKey;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_9d

    .line 12763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v0, "} does not correspond to an ArrayList<Parcelable> in the bundle."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 12766
    :cond_9d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "List.get("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmIndex(Landroid/content/Intent$NestedIntentKey;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") for key {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 12755
    :sswitch_c3
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static {p1}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmKey(Landroid/content/Intent$NestedIntentKey;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e8

    .line 12756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v0, "} does not correspond to a Parcelable[] in the bundle."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 12759
    :cond_e8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parcelable["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmIndex(Landroid/content/Intent$NestedIntentKey;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] for key {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 12753
    :sswitch_10e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v0, "} does not correspond to an intent in the bundle."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_128
    .sparse-switch
        0x1 -> :sswitch_10e
        0x2 -> :sswitch_c3
        0x4 -> :sswitch_78
        0x8 -> :sswitch_26
    .end sparse-switch
.end method

.method private blacklist handleNestedIntent(Landroid/content/Intent;Ljava/util/Set;Landroid/content/Intent$NestedIntentKey;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/Set<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/content/Intent$NestedIntentKey;",
            "Z)V"
        }
    .end annotation

    .line 12628
    iget-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    if-nez v0, :cond_c

    .line 12629
    new-instance v0, Landroid/content/Intent$CreatorTokenInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/Intent$CreatorTokenInfo;-><init>(Landroid/content/Intent-IA;)V

    iput-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    .line 12631
    :cond_c
    iget-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    invoke-static {v0}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fgetmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;)Landroid/util/ArraySet;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 12632
    iget-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-static {v0, v1}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fputmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;Landroid/util/ArraySet;)V

    .line 12634
    :cond_1e
    iget-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    invoke-static {v0}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fgetmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 12635
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_33

    .line 12636
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12637
    invoke-direct {p1, p2, p4}, Landroid/content/Intent;->collectNestedIntentKeysRecur(Ljava/util/Set;Z)V

    .line 12639
    :cond_33
    return-void
.end method

.method private blacklist handleParcelableArray([Landroid/os/Parcelable;Ljava/lang/String;Ljava/util/Set;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/Parcelable;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/content/Intent;",
            ">;Z)V"
        }
    .end annotation

    .line 12643
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1f

    .line 12644
    aget-object v1, p1, v0

    instance-of v2, v1, Landroid/content/Intent;

    if-eqz v2, :cond_1c

    check-cast v1, Landroid/content/Intent;

    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 12645
    new-instance v2, Landroid/content/Intent$NestedIntentKey;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v2, v3, p2, v0, v4}, Landroid/content/Intent$NestedIntentKey;-><init>(ILjava/lang/String;ILandroid/content/Intent-IA;)V

    invoke-direct {p0, v1, p3, v2, p4}, Landroid/content/Intent;->handleNestedIntent(Landroid/content/Intent;Ljava/util/Set;Landroid/content/Intent$NestedIntentKey;Z)V

    .line 12643
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 12650
    :cond_1f
    return-void
.end method

.method private blacklist handleParcelableList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/content/Intent;",
            ">;Z)V"
        }
    .end annotation

    .line 12654
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 12655
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/content/Intent;

    if-eqz v2, :cond_21

    check-cast v1, Landroid/content/Intent;

    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 12656
    new-instance v2, Landroid/content/Intent$NestedIntentKey;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {v2, v3, p2, v0, v4}, Landroid/content/Intent$NestedIntentKey;-><init>(ILjava/lang/String;ILandroid/content/Intent-IA;)V

    invoke-direct {p0, v1, p3, v2, p4}, Landroid/content/Intent;->handleNestedIntent(Landroid/content/Intent;Ljava/util/Set;Landroid/content/Intent$NestedIntentKey;Z)V

    .line 12654
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 12661
    :cond_24
    return-void
.end method

.method public static greylist-max-o isAccessUriMode(I)Z
    .registers 1

    .line 7195
    and-int/lit8 p0, p0, 0x3

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private blacklist isImageCaptureIntent()Z
    .registers 3

    .line 13342
    const-string v0, "android.media.action.IMAGE_CAPTURE"

    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    .line 13343
    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    .line 13344
    const-string v1, "android.provider.action.MOTION_PHOTO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    .line 13345
    const-string v1, "android.provider.action.MOTION_PHOTO_CAPTURE_SECURE"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    .line 13346
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_35

    :cond_33
    const/4 v0, 0x0

    goto :goto_36

    :cond_35
    :goto_35
    const/4 v0, 0x1

    .line 13342
    :goto_36
    return v0
.end method

.method private blacklist isMissingGrantFlag(I)Z
    .registers 3

    .line 13619
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/2addr v0, p1

    if-eq v0, p1, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method static synthetic blacklist lambda$static$0(Landroid/content/Intent;)V
    .registers 2

    .line 12664
    iget v0, p0, Landroid/content/Intent;->mLocalFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/content/Intent;->mLocalFlags:I

    .line 12665
    return-void
.end method

.method static synthetic blacklist lambda$static$1(Landroid/content/Intent;)V
    .registers 2

    .line 12668
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    .line 12669
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->enableTokenVerification()V

    .line 12671
    :cond_9
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_12

    .line 12672
    iget-object p0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {p0}, Landroid/content/ClipData;->setTokenVerificationEnabled()V

    .line 12674
    :cond_12
    return-void
.end method

.method private static greylist-max-o makeClipItem(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Landroid/content/ClipData$Item;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/content/ClipData$Item;"
        }
    .end annotation

    .line 13663
    const/4 v0, 0x0

    if-eqz p0, :cond_a

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    goto :goto_b

    :cond_a
    move-object p0, v0

    .line 13664
    :goto_b
    if-eqz p1, :cond_14

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_15

    :cond_14
    move-object p1, v0

    .line 13665
    :goto_15
    if-eqz p2, :cond_1e

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_1f

    :cond_1e
    move-object p2, v0

    .line 13666
    :goto_1f
    new-instance p3, Landroid/content/ClipData$Item;

    invoke-direct {p3, p1, p2, v0, p0}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    return-object p3
.end method

.method public static whitelist makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;
    .registers 3

    .line 8255
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8256
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 8257
    const-string p0, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 8258
    return-object v0
.end method

.method public static whitelist makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 8285
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8286
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 8287
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 8288
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 8289
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 8290
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 8291
    return-object v0
.end method

.method public static whitelist makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;
    .registers 2

    .line 8308
    invoke-static {p0}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    .line 8309
    const v0, 0x10008000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8311
    return-object p0
.end method

.method private blacklist maybeConvertFileToContentUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 6

    .line 13624
    const-string v0, "file"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 13625
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_56

    .line 13626
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13628
    :try_start_1f
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_28

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 13629
    :cond_28
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_39} :catch_3d

    .line 13630
    if-eqz p2, :cond_3c

    .line 13631
    return-object p2

    .line 13635
    :cond_3c
    goto :goto_56

    .line 13633
    :catch_3d
    move-exception p1

    .line 13634
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring failure to create file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Intent"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13637
    :cond_56
    :goto_56
    return-object p2
.end method

.method public static blacklist maybeMarkAsMissingCreatorToken(Ljava/lang/Object;)V
    .registers 5

    .line 906
    instance-of v0, p0, Landroid/content/Intent;

    if-eqz v0, :cond_a

    check-cast p0, Landroid/content/Intent;

    .line 907
    invoke-static {p0}, Landroid/content/Intent;->maybeMarkAsMissingCreatorTokenInternal(Landroid/content/Intent;)V

    goto :goto_3f

    .line 908
    :cond_a
    instance-of v0, p0, [Landroid/os/Parcelable;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    check-cast p0, [Landroid/os/Parcelable;

    .line 909
    array-length v0, p0

    :goto_12
    if-ge v1, v0, :cond_3f

    aget-object v2, p0, v1

    .line 910
    instance-of v3, v2, Landroid/content/Intent;

    if-eqz v3, :cond_1f

    check-cast v2, Landroid/content/Intent;

    .line 911
    invoke-static {v2}, Landroid/content/Intent;->maybeMarkAsMissingCreatorTokenInternal(Landroid/content/Intent;)V

    .line 909
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 914
    :cond_22
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_3f

    check-cast p0, Ljava/util/ArrayList;

    .line 915
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 916
    nop

    :goto_2d
    if-ge v1, v0, :cond_3f

    .line 917
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 918
    instance-of v3, v2, Landroid/content/Intent;

    if-eqz v3, :cond_3c

    check-cast v2, Landroid/content/Intent;

    .line 919
    invoke-static {v2}, Landroid/content/Intent;->maybeMarkAsMissingCreatorTokenInternal(Landroid/content/Intent;)V

    .line 916
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 923
    :cond_3f
    :goto_3f
    return-void
.end method

.method private static blacklist maybeMarkAsMissingCreatorTokenInternal(Landroid/content/Intent;)V
    .registers 6

    .line 926
    iget v0, p0, Landroid/content/Intent;->mLocalFlags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v3

    .line 927
    :goto_b
    iget v4, p0, Landroid/content/Intent;->mLocalFlags:I

    and-int/lit8 v4, v4, 0x40

    if-nez v4, :cond_12

    goto :goto_13

    :cond_12
    move v2, v3

    .line 929
    :goto_13
    if-eqz v0, :cond_20

    if-eqz v2, :cond_20

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->preventIntentRedirect()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 930
    invoke-virtual {p0, v1}, Landroid/content/Intent;->addExtendedFlags(I)Landroid/content/Intent;

    .line 932
    :cond_20
    return-void
.end method

.method public static whitelist normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 13123
    if-nez p0, :cond_4

    .line 13124
    const/4 p0, 0x0

    return-object p0

    .line 13127
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 13129
    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 13130
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    .line 13131
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 13133
    :cond_1c
    return-object p0
.end method

.method public static greylist-max-r parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 8773
    move-object/from16 v0, p1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 8774
    nop

    .line 8775
    nop

    .line 8777
    nop

    .line 8778
    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 8781
    :goto_e
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2f

    const/4 v10, 0x7

    if-eqz v8, :cond_736

    .line 8782
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v12

    const/16 v13, 0x8

    sparse-switch v12, :sswitch_data_7ee

    :cond_20
    goto/16 :goto_2ba

    :sswitch_22
    const-string v9, "--grant-write-uri-permission"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x1d

    goto/16 :goto_2bb

    :sswitch_2e
    const-string v9, "--activity-multiple-task"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x28

    goto/16 :goto_2bb

    :sswitch_3a
    const-string v9, "--grant-read-uri-permission"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x1c

    goto/16 :goto_2bb

    :sswitch_46
    const-string v9, "--receiver-foreground"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x35

    goto/16 :goto_2bb

    :sswitch_52
    const-string v9, "--receiver-no-abort"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x36

    goto/16 :goto_2bb

    :sswitch_5e
    const-string v9, "--activity-launched-from-history"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x27

    goto/16 :goto_2bb

    :sswitch_6a
    const-string v9, "--activity-clear-when-task-reset"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x25

    goto/16 :goto_2bb

    :sswitch_76
    const-string v9, "--esal"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x17

    goto/16 :goto_2bb

    :sswitch_82
    const-string v9, "--elal"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0xf

    goto/16 :goto_2bb

    :sswitch_8e
    const-string v9, "--eial"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0xc

    goto/16 :goto_2bb

    :sswitch_9a
    const-string v9, "--efal"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x12

    goto/16 :goto_2bb

    :sswitch_a6
    const-string v9, "--edal"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x15

    goto/16 :goto_2bb

    :sswitch_b2
    const-string v9, "--selector"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x38

    goto/16 :goto_2bb

    :sswitch_be
    const-string v9, "--activity-match-external"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x32

    goto/16 :goto_2bb

    :sswitch_ca
    const-string v9, "--receiver-replace-pending"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x34

    goto/16 :goto_2bb

    :sswitch_d6
    const-string v9, "--include-stopped-packages"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x21

    goto/16 :goto_2bb

    :sswitch_e2
    const-string v9, "--exclude-stopped-packages"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x20

    goto/16 :goto_2bb

    :sswitch_ee
    const-string v9, "--grant-persistable-uri-permission"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x1e

    goto/16 :goto_2bb

    :sswitch_fa
    const-string v10, "--activity-single-top"

    invoke-virtual {v8, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_20

    goto/16 :goto_2bb

    :sswitch_104
    const-string v9, "--receiver-registered-only"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x33

    goto/16 :goto_2bb

    :sswitch_110
    const-string v9, "--activity-no-user-action"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x2b

    goto/16 :goto_2bb

    :sswitch_11c
    const-string v9, "--activity-clear-top"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x24

    goto/16 :goto_2bb

    :sswitch_128
    const-string v9, "--activity-reset-task-if-needed"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x2e

    goto/16 :goto_2bb

    :sswitch_134
    const-string v9, "--activity-no-animation"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x29

    goto/16 :goto_2bb

    :sswitch_140
    const-string v9, "--activity-exclude-from-recents"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x26

    goto/16 :goto_2bb

    :sswitch_14c
    const-string v9, "--esn"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    move v9, v10

    goto/16 :goto_2bb

    :sswitch_157
    const-string v9, "--esa"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x16

    goto/16 :goto_2bb

    :sswitch_163
    const-string v9, "--ela"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0xe

    goto/16 :goto_2bb

    :sswitch_16f
    const-string v9, "--eia"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0xb

    goto/16 :goto_2bb

    :sswitch_17b
    const-string v9, "--efa"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x11

    goto/16 :goto_2bb

    :sswitch_187
    const-string v9, "--eda"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x14

    goto/16 :goto_2bb

    :sswitch_193
    const-string v9, "--ecn"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0xa

    goto/16 :goto_2bb

    :sswitch_19f
    const-string v9, "--ez"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x18

    goto/16 :goto_2bb

    :sswitch_1ab
    const-string v9, "--eu"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x9

    goto/16 :goto_2bb

    :sswitch_1b7
    const-string v9, "--es"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/4 v9, 0x6

    goto/16 :goto_2bb

    :sswitch_1c2
    const-string v9, "--el"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0xd

    goto/16 :goto_2bb

    :sswitch_1ce
    const-string v9, "--ei"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    move v9, v13

    goto/16 :goto_2bb

    :sswitch_1d9
    const-string v9, "--ef"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x10

    goto/16 :goto_2bb

    :sswitch_1e5
    const-string v9, "--ed"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x13

    goto/16 :goto_2bb

    :sswitch_1f1
    const-string v9, "-t"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/4 v9, 0x2

    goto/16 :goto_2bb

    :sswitch_1fc
    const-string v9, "-p"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x1a

    goto/16 :goto_2bb

    :sswitch_208
    const-string v9, "-n"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x19

    goto/16 :goto_2bb

    :sswitch_214
    const-string v9, "-i"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/4 v9, 0x3

    goto/16 :goto_2bb

    :sswitch_21f
    const-string v9, "-f"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x1b

    goto/16 :goto_2bb

    :sswitch_22b
    const-string v9, "-e"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/4 v9, 0x5

    goto/16 :goto_2bb

    :sswitch_236
    const-string v9, "-d"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/4 v9, 0x1

    goto/16 :goto_2bb

    :sswitch_241
    const-string v9, "-c"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/4 v9, 0x4

    goto/16 :goto_2bb

    :sswitch_24c
    const-string v9, "-a"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/4 v9, 0x0

    goto/16 :goto_2bb

    :sswitch_257
    const-string v9, "--receiver-include-background"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x37

    goto :goto_2bb

    :sswitch_262
    const-string v9, "--activity-previous-is-top"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x2c

    goto :goto_2bb

    :sswitch_26d
    const-string v9, "--activity-brought-to-front"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x23

    goto :goto_2bb

    :sswitch_278
    const-string v9, "--activity-reorder-to-front"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x2d

    goto :goto_2bb

    :sswitch_283
    const-string v9, "--debug-log-resolution"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x22

    goto :goto_2bb

    :sswitch_28e
    const-string v9, "--activity-clear-task"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x30

    goto :goto_2bb

    :sswitch_299
    const-string v9, "--activity-no-history"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x2a

    goto :goto_2bb

    :sswitch_2a4
    const-string v9, "--activity-task-on-home"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x31

    goto :goto_2bb

    :sswitch_2af
    const-string v9, "--grant-prefix-uri-permission"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/16 v9, 0x1f

    goto :goto_2bb

    :goto_2ba
    const/4 v9, -0x1

    :goto_2bb
    const-string v10, "Bad component name: "

    const/high16 v12, 0x20000000

    const/16 v17, 0x0

    const/high16 v3, 0x1000000

    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v2, 0x8000000

    const-string v15, "(?<!\\\\),"

    const-string v14, ","

    packed-switch v9, :pswitch_data_8d4

    .line 9119
    if-eqz v0, :cond_71d

    move-object/from16 v3, p0

    invoke-interface {v0, v8, v3}, Landroid/content/Intent$CommandOptionHandler;->handleOption(Ljava/lang/String;Landroid/os/ShellCommand;)Z

    move-result v2

    if-eqz v2, :cond_71d

    goto/16 :goto_71b

    .line 9115
    :pswitch_2da
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 9116
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 9117
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 9112
    :pswitch_2e6
    invoke-virtual {v4, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9113
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 9109
    :pswitch_2ed
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9110
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 9106
    :pswitch_2f4
    const/high16 v2, 0x10000000

    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9107
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 9103
    :pswitch_2fd
    invoke-virtual {v4, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9104
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 9100
    :pswitch_304
    invoke-virtual {v4, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9101
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 9097
    :pswitch_30b
    const/16 v2, 0x800

    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9098
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 9094
    :pswitch_314
    const/16 v2, 0x4000

    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9095
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 9091
    :pswitch_31d
    const v2, 0x8000

    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9092
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 9088
    :pswitch_327
    invoke-virtual {v4, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9089
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 9085
    :pswitch_32e
    const/high16 v2, 0x200000

    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9086
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 9082
    :pswitch_337
    const/high16 v2, 0x20000

    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9083
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 9079
    :pswitch_340
    invoke-virtual {v4, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9080
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 9076
    :pswitch_347
    const/high16 v2, 0x40000

    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9077
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 9073
    :pswitch_350
    invoke-virtual {v4, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9074
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 9070
    :pswitch_357
    const/high16 v2, 0x10000

    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9071
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 9067
    :pswitch_360
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9068
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 9064
    :pswitch_367
    const/high16 v2, 0x100000

    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9065
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 9061
    :pswitch_370
    const/high16 v2, 0x800000

    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9062
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 9058
    :pswitch_379
    const/high16 v2, 0x80000

    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9059
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 9055
    :pswitch_382
    const/high16 v2, 0x4000000

    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9056
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 9052
    :pswitch_38b
    const/high16 v2, 0x400000

    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9053
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 9049
    :pswitch_394
    invoke-virtual {v4, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9050
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 9046
    :pswitch_39b
    const/16 v2, 0x20

    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9047
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 9043
    :pswitch_3a4
    const/16 v2, 0x10

    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9044
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 9040
    :pswitch_3ad
    const/16 v2, 0x80

    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9041
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 9037
    :pswitch_3b6
    const/16 v2, 0x40

    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9038
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 9034
    :pswitch_3bf
    const/4 v2, 0x2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9035
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 9031
    :pswitch_3c7
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9032
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 9027
    :pswitch_3cf
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 9028
    invoke-static {v2}, Landroid/content/Intent;->decodeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 9029
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 9019
    :pswitch_3e2
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 9020
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 9021
    if-ne v4, v1, :cond_3ed

    .line 9022
    move v7, v2

    .line 9025
    :cond_3ed
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 9008
    :pswitch_3f1
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 9009
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    .line 9010
    if-eqz v8, :cond_406

    .line 9012
    invoke-virtual {v4, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 9013
    if-ne v4, v1, :cond_402

    .line 9014
    move v7, v2

    .line 9017
    :cond_402
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 9011
    :cond_406
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8987
    :pswitch_41d
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 8988
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 8992
    const-string/jumbo v9, "true"

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_478

    const-string/jumbo v9, "t"

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_43d

    goto :goto_478

    .line 8994
    :cond_43d
    const-string v9, "false"

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_476

    const-string v9, "f"

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_44e

    goto :goto_476

    .line 8998
    :cond_44e
    :try_start_44e
    invoke-static {v8}, Landroid/content/Intent;->decodeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8
    :try_end_456
    .catch Ljava/lang/NumberFormatException; {:try_start_44e .. :try_end_456} :catch_45c

    if-eqz v8, :cond_45a

    move v11, v2

    goto :goto_45b

    :cond_45a
    const/4 v11, 0x0

    .line 9001
    :goto_45b
    goto :goto_479

    .line 8999
    :catch_45c
    move-exception v0

    .line 9000
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid boolean value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8995
    :cond_476
    :goto_476
    const/4 v11, 0x0

    goto :goto_479

    .line 8993
    :cond_478
    :goto_478
    move v11, v2

    .line 9004
    :goto_479
    invoke-virtual {v4, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9006
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 8972
    :pswitch_480
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 8973
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 8977
    invoke-virtual {v7, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 8978
    new-instance v8, Ljava/util/ArrayList;

    array-length v9, v7

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 8979
    const/4 v9, 0x0

    :goto_494
    array-length v10, v7

    if-ge v9, v10, :cond_49f

    .line 8980
    aget-object v10, v7, v9

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8979
    add-int/lit8 v9, v9, 0x1

    goto :goto_494

    .line 8982
    :cond_49f
    invoke-virtual {v4, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 8983
    nop

    .line 8985
    move-object/from16 v3, p0

    move v7, v2

    goto/16 :goto_71b

    .line 8961
    :pswitch_4a8
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 8962
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 8966
    invoke-virtual {v7, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 8967
    invoke-virtual {v4, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 8968
    nop

    .line 8970
    move-object/from16 v3, p0

    move v7, v2

    goto/16 :goto_71b

    .line 8949
    :pswitch_4be
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 8950
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 8951
    invoke-virtual {v7, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 8952
    new-instance v8, Ljava/util/ArrayList;

    array-length v9, v7

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 8953
    const/4 v9, 0x0

    :goto_4d2
    array-length v10, v7

    if-ge v9, v10, :cond_4e1

    .line 8954
    aget-object v10, v7, v9

    invoke-static {v10}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8953
    add-int/lit8 v9, v9, 0x1

    goto :goto_4d2

    .line 8956
    :cond_4e1
    invoke-virtual {v4, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 8957
    nop

    .line 8959
    move-object/from16 v3, p0

    move v7, v2

    goto/16 :goto_71b

    .line 8937
    :pswitch_4ea
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 8938
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 8939
    invoke-virtual {v7, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 8940
    array-length v8, v7

    new-array v8, v8, [D

    .line 8941
    const/4 v9, 0x0

    :goto_4fb
    array-length v10, v7

    if-ge v9, v10, :cond_50d

    .line 8942
    aget-object v10, v7, v9

    invoke-static {v10}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    aput-wide v10, v8, v9

    .line 8941
    add-int/lit8 v9, v9, 0x1

    goto :goto_4fb

    .line 8944
    :cond_50d
    invoke-virtual {v4, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[D)Landroid/content/Intent;

    .line 8945
    nop

    .line 8947
    move-object/from16 v3, p0

    move v7, v2

    goto/16 :goto_71b

    .line 8930
    :pswitch_516
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 8931
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 8932
    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v4, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 8933
    nop

    .line 8935
    move-object/from16 v3, p0

    move v7, v2

    goto/16 :goto_71b

    .line 8918
    :pswitch_52c
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 8919
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 8920
    invoke-virtual {v7, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 8921
    new-instance v8, Ljava/util/ArrayList;

    array-length v9, v7

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 8922
    const/4 v9, 0x0

    :goto_540
    array-length v10, v7

    if-ge v9, v10, :cond_54f

    .line 8923
    aget-object v10, v7, v9

    invoke-static {v10}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8922
    add-int/lit8 v9, v9, 0x1

    goto :goto_540

    .line 8925
    :cond_54f
    invoke-virtual {v4, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 8926
    nop

    .line 8928
    move-object/from16 v3, p0

    move v7, v2

    goto/16 :goto_71b

    .line 8906
    :pswitch_558
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 8907
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 8908
    invoke-virtual {v7, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 8909
    array-length v8, v7

    new-array v8, v8, [F

    .line 8910
    const/4 v9, 0x0

    :goto_569
    array-length v10, v7

    if-ge v9, v10, :cond_57b

    .line 8911
    aget-object v10, v7, v9

    invoke-static {v10}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    aput v10, v8, v9

    .line 8910
    add-int/lit8 v9, v9, 0x1

    goto :goto_569

    .line 8913
    :cond_57b
    invoke-virtual {v4, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    .line 8914
    nop

    .line 8916
    move-object/from16 v3, p0

    move v7, v2

    goto/16 :goto_71b

    .line 8899
    :pswitch_584
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 8900
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 8901
    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 8902
    nop

    .line 8904
    move-object/from16 v3, p0

    move v7, v2

    goto/16 :goto_71b

    .line 8887
    :pswitch_59a
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 8888
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 8889
    invoke-virtual {v7, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 8890
    new-instance v8, Ljava/util/ArrayList;

    array-length v9, v7

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 8891
    const/4 v9, 0x0

    :goto_5ae
    array-length v10, v7

    if-ge v9, v10, :cond_5bd

    .line 8892
    aget-object v10, v7, v9

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8891
    add-int/lit8 v9, v9, 0x1

    goto :goto_5ae

    .line 8894
    :cond_5bd
    invoke-virtual {v4, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 8895
    nop

    .line 8897
    move-object/from16 v3, p0

    move v7, v2

    goto/16 :goto_71b

    .line 8875
    :pswitch_5c6
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 8876
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 8877
    invoke-virtual {v7, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 8878
    array-length v8, v7

    new-array v8, v8, [J

    .line 8879
    const/4 v9, 0x0

    :goto_5d7
    array-length v10, v7

    if-ge v9, v10, :cond_5e9

    .line 8880
    aget-object v10, v7, v9

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    aput-wide v10, v8, v9

    .line 8879
    add-int/lit8 v9, v9, 0x1

    goto :goto_5d7

    .line 8882
    :cond_5e9
    invoke-virtual {v4, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 8883
    nop

    .line 8885
    move-object/from16 v3, p0

    move v7, v2

    goto/16 :goto_71b

    .line 8869
    :pswitch_5f2
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 8870
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 8871
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 8873
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 8858
    :pswitch_605
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 8859
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 8860
    invoke-virtual {v3, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 8861
    new-instance v8, Ljava/util/ArrayList;

    array-length v9, v3

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 8862
    const/4 v9, 0x0

    :goto_618
    array-length v10, v3

    if-ge v9, v10, :cond_627

    .line 8863
    aget-object v10, v3, v9

    invoke-static {v10}, Landroid/content/Intent;->decodeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8862
    add-int/lit8 v9, v9, 0x1

    goto :goto_618

    .line 8865
    :cond_627
    invoke-virtual {v4, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 8867
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 8847
    :pswitch_62e
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 8848
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 8849
    invoke-virtual {v3, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 8850
    array-length v8, v3

    new-array v8, v8, [I

    .line 8851
    const/4 v9, 0x0

    :goto_63e
    array-length v10, v3

    if-ge v9, v10, :cond_650

    .line 8852
    aget-object v10, v3, v9

    invoke-static {v10}, Landroid/content/Intent;->decodeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v8, v9

    .line 8851
    add-int/lit8 v9, v9, 0x1

    goto :goto_63e

    .line 8854
    :cond_650
    invoke-virtual {v4, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 8856
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 8838
    :pswitch_657
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 8839
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 8840
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    .line 8841
    if-eqz v8, :cond_66c

    .line 8843
    invoke-virtual {v4, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 8845
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 8842
    :cond_66c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8832
    :pswitch_683
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 8833
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 8834
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 8836
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 8826
    :pswitch_696
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 8827
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 8828
    invoke-static {v3}, Landroid/content/Intent;->decodeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 8830
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 8821
    :pswitch_6a9
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 8822
    move-object/from16 v3, v17

    check-cast v3, Ljava/lang/String;

    move-object/from16 v3, v17

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8824
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 8815
    :pswitch_6ba
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 8816
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 8817
    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8819
    move-object/from16 v3, p0

    goto/16 :goto_71b

    .line 8808
    :pswitch_6c9
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 8809
    if-ne v4, v1, :cond_6d7

    .line 8810
    move-object/from16 v3, p0

    move v7, v2

    goto :goto_71b

    .line 8809
    :cond_6d7
    move-object/from16 v3, p0

    goto :goto_71b

    .line 8802
    :pswitch_6da
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setIdentifier(Ljava/lang/String;)Landroid/content/Intent;

    .line 8803
    if-ne v4, v1, :cond_6e8

    .line 8804
    move-object/from16 v3, p0

    move v7, v2

    goto :goto_71b

    .line 8803
    :cond_6e8
    move-object/from16 v3, p0

    goto :goto_71b

    .line 8796
    :pswitch_6eb
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 8797
    if-ne v4, v1, :cond_6f6

    .line 8798
    move-object/from16 v3, p0

    move v7, v2

    goto :goto_71b

    .line 8797
    :cond_6f6
    move-object/from16 v3, p0

    goto :goto_71b

    .line 8790
    :pswitch_6f9
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 8791
    if-ne v4, v1, :cond_708

    .line 8792
    move-object/from16 v3, p0

    move v7, v2

    goto :goto_71b

    .line 8791
    :cond_708
    move-object/from16 v3, p0

    goto :goto_71b

    .line 8784
    :pswitch_70b
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 8785
    if-ne v4, v1, :cond_719

    .line 8786
    move-object/from16 v3, p0

    move v7, v2

    goto :goto_71b

    .line 8785
    :cond_719
    move-object/from16 v3, p0

    .line 9125
    :goto_71b
    goto/16 :goto_e

    .line 9122
    :cond_71d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9127
    :cond_736
    move-object/from16 v3, p0

    const/4 v2, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 9129
    if-eq v4, v1, :cond_741

    move/from16 v16, v2

    goto :goto_743

    :cond_741
    const/16 v16, 0x0

    .line 9130
    :goto_743
    if-eqz v16, :cond_749

    .line 9132
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 9133
    goto :goto_74a

    .line 9130
    :cond_749
    move-object v1, v4

    .line 9136
    :goto_74a
    invoke-virtual {v3}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 9137
    nop

    .line 9138
    const-string v3, "android.intent.category.LAUNCHER"

    const-string v4, "android.intent.action.MAIN"

    if-nez v0, :cond_763

    .line 9139
    if-eqz v16, :cond_761

    .line 9145
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9146
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object v3, v0

    goto :goto_793

    .line 9139
    :cond_761
    const/4 v3, 0x0

    goto :goto_793

    .line 9148
    :cond_763
    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_770

    .line 9151
    invoke-static {v0, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    goto :goto_793

    .line 9153
    :cond_770
    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_787

    .line 9156
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9157
    invoke-virtual {v5, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 9158
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object v3, v5

    goto :goto_793

    .line 9161
    :cond_787
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9162
    invoke-virtual {v5, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 9163
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object v3, v5

    .line 9165
    :goto_793
    if-eqz v3, :cond_7e3

    .line 9166
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 9167
    const/4 v4, 0x0

    move-object v5, v4

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 9168
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 9169
    invoke-virtual {v3, v4}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 9170
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7d0

    invoke-virtual {v3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_7d0

    .line 9171
    new-instance v4, Ljava/util/HashSet;

    invoke-virtual {v3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 9172
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7c0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7d0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 9173
    invoke-virtual {v3, v6}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 9174
    goto :goto_7c0

    .line 9176
    :cond_7d0
    const/16 v4, 0x48

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 9177
    if-nez v0, :cond_7d8

    .line 9178
    goto :goto_7de

    .line 9179
    :cond_7d8
    if-eqz v5, :cond_7df

    .line 9180
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 9181
    nop

    .line 9183
    :goto_7de
    move-object v0, v5

    :cond_7df
    invoke-virtual {v1, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 9184
    move v7, v2

    .line 9187
    :cond_7e3
    if-eqz v7, :cond_7e6

    .line 9188
    return-object v1

    .line 9187
    :cond_7e6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No intent supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_7ee
    .sparse-switch
        -0x7ffea226 -> :sswitch_2af
        -0x7e40bfdd -> :sswitch_2a4
        -0x61305b9a -> :sswitch_299
        -0x4aae571d -> :sswitch_28e
        -0x3fbe74d1 -> :sswitch_283
        -0x328eb9b9 -> :sswitch_278
        -0x31a9343b -> :sswitch_26d
        -0x2f378b56 -> :sswitch_262
        -0x2e804d8f -> :sswitch_257
        0x5d4 -> :sswitch_24c
        0x5d6 -> :sswitch_241
        0x5d7 -> :sswitch_236
        0x5d8 -> :sswitch_22b
        0x5d9 -> :sswitch_21f
        0x5dc -> :sswitch_214
        0x5e1 -> :sswitch_208
        0x5e3 -> :sswitch_1fc
        0x5e7 -> :sswitch_1f1
        0x152a3f -> :sswitch_1e5
        0x152a41 -> :sswitch_1d9
        0x152a44 -> :sswitch_1ce
        0x152a47 -> :sswitch_1c2
        0x152a4e -> :sswitch_1b7
        0x152a50 -> :sswitch_1ab
        0x152a55 -> :sswitch_19f
        0x2901df0 -> :sswitch_193
        0x2901e02 -> :sswitch_187
        0x2901e40 -> :sswitch_17b
        0x2901e9d -> :sswitch_16f
        0x2901efa -> :sswitch_163
        0x2901fd3 -> :sswitch_157
        0x2901fe0 -> :sswitch_14c
        0x41eb1c6 -> :sswitch_140
        0x54a2ed6 -> :sswitch_134
        0xb611ab9 -> :sswitch_128
        0xe1b6a37 -> :sswitch_11c
        0x1998b94a -> :sswitch_110
        0x1a0135d9 -> :sswitch_104
        0x1a23762e -> :sswitch_fa
        0x1f699c40 -> :sswitch_ee
        0x22987a20 -> :sswitch_e2
        0x2caeb912 -> :sswitch_d6
        0x2e337d40 -> :sswitch_ca
        0x422c3bb1 -> :sswitch_be
        0x47f6597f -> :sswitch_b2
        0x4f73a2aa -> :sswitch_a6
        0x4f73aa2c -> :sswitch_9a
        0x4f73b56f -> :sswitch_8e
        0x4f73c0b2 -> :sswitch_82
        0x4f73daf9 -> :sswitch_76
        0x50b32d5c -> :sswitch_6a
        0x5359f12e -> :sswitch_5e
        0x569e74a2 -> :sswitch_52
        0x62838641 -> :sswitch_46
        0x67da9e16 -> :sswitch_3a
        0x69396684 -> :sswitch_2e
        0x6c467a2f -> :sswitch_22
    .end sparse-switch

    :pswitch_data_8d4
    .packed-switch 0x0
        :pswitch_70b
        :pswitch_6f9
        :pswitch_6eb
        :pswitch_6da
        :pswitch_6c9
        :pswitch_6ba
        :pswitch_6ba
        :pswitch_6a9
        :pswitch_696
        :pswitch_683
        :pswitch_657
        :pswitch_62e
        :pswitch_605
        :pswitch_5f2
        :pswitch_5c6
        :pswitch_59a
        :pswitch_584
        :pswitch_558
        :pswitch_52c
        :pswitch_516
        :pswitch_4ea
        :pswitch_4be
        :pswitch_4a8
        :pswitch_480
        :pswitch_41d
        :pswitch_3f1
        :pswitch_3e2
        :pswitch_3cf
        :pswitch_3c7
        :pswitch_3bf
        :pswitch_3b6
        :pswitch_3ad
        :pswitch_3a4
        :pswitch_39b
        :pswitch_394
        :pswitch_38b
        :pswitch_382
        :pswitch_379
        :pswitch_370
        :pswitch_367
        :pswitch_360
        :pswitch_357
        :pswitch_350
        :pswitch_347
        :pswitch_340
        :pswitch_337
        :pswitch_32e
        :pswitch_327
        :pswitch_31d
        :pswitch_314
        :pswitch_30b
        :pswitch_304
        :pswitch_2fd
        :pswitch_2f4
        :pswitch_2ed
        :pswitch_2e6
        :pswitch_2da
    .end packed-switch
.end method

.method public static whitelist parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 12965
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 12967
    sget-object v1, Lcom/android/internal/R$styleable;->Intent:[I

    invoke-virtual {p0, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 12970
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 12972
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 12973
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 12974
    if-eqz v3, :cond_24

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_25

    :cond_24
    const/4 v3, 0x0

    :goto_25
    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 12976
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setIdentifier(Ljava/lang/String;)Landroid/content/Intent;

    .line 12978
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 12979
    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 12980
    if-eqz v5, :cond_46

    if-eqz v7, :cond_46

    .line 12981
    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 12984
    :cond_46
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 12986
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 12988
    :cond_4d
    :goto_4d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v4, :cond_a2

    if-ne v5, v2, :cond_5b

    .line 12989
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v1, :cond_a2

    .line 12990
    :cond_5b
    if-eq v5, v2, :cond_4d

    if-ne v5, v6, :cond_60

    .line 12991
    goto :goto_4d

    .line 12994
    :cond_60
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 12995
    const-string v7, "categories"

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_82

    .line 12996
    sget-object v5, Lcom/android/internal/R$styleable;->IntentCategory:[I

    invoke-virtual {p0, p2, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 12998
    invoke-virtual {v5, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 12999
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 13001
    if-eqz v7, :cond_7e

    .line 13002
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 13004
    :cond_7e
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 13006
    goto :goto_a1

    :cond_82
    const-string v7, "extra"

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 13007
    iget-object v5, v0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v5, :cond_95

    .line 13008
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, v0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 13010
    :cond_95
    iget-object v5, v0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p0, v7, p2, v5}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 13011
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_a1

    .line 13014
    :cond_9e
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 13016
    :goto_a1
    goto :goto_4d

    .line 13018
    :cond_a2
    return-object v0
.end method

.method public static whitelist parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 8344
    invoke-static {p0, p1}, Landroid/content/Intent;->parseUriInternal(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    .line 8345
    iget p1, p0, Landroid/content/Intent;->mLocalFlags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroid/content/Intent;->mLocalFlags:I

    .line 8346
    return-object p0
.end method

.method private static blacklist parseUriInternal(Ljava/lang/String;I)Landroid/content/Intent;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 8354
    move-object/from16 v1, p0

    const-string v0, "android-app:"

    .line 8356
    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_9} :catch_33b

    .line 8359
    and-int/lit8 v4, p1, 0x3

    const-string v5, "intent:"

    const-string v6, "android.intent.action.VIEW"

    if-eqz v4, :cond_32

    .line 8360
    :try_start_11
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_32

    if-nez v3, :cond_32

    .line 8361
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11 .. :try_end_1e} :catch_33b

    .line 8363
    :try_start_1e
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_25} :catch_27
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1e .. :try_end_25} :catch_33b

    .line 8366
    nop

    .line 8367
    return-object v0

    .line 8364
    :catch_27
    move-exception v0

    .line 8365
    :try_start_28
    new-instance v3, Ljava/net/URISyntaxException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 8371
    :cond_32
    const-string v4, "#"

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4
    :try_end_38
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_28 .. :try_end_38} :catch_33b

    .line 8373
    const/4 v7, -0x1

    if-ne v4, v7, :cond_47

    .line 8374
    if-nez v3, :cond_57

    .line 8375
    :try_start_3d
    new-instance v0, Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0

    .line 8379
    :cond_47
    const-string v8, "#Intent;"

    invoke-virtual {v1, v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_57

    .line 8380
    if-nez v3, :cond_56

    .line 8381
    invoke-static/range {p0 .. p1}, Landroid/content/Intent;->getIntentOld(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 8383
    :cond_56
    move v4, v7

    .line 8388
    :cond_57
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8389
    nop

    .line 8390
    nop

    .line 8391
    nop

    .line 8394
    nop

    .line 8396
    if-ltz v4, :cond_6d

    .line 8397
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7
    :try_end_66
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3d .. :try_end_66} :catch_338

    .line 8398
    add-int/lit8 v4, v4, 0x8

    move v9, v2

    move v11, v9

    move-object v8, v3

    const/4 v10, 0x0

    goto :goto_72

    .line 8400
    :cond_6d
    move-object v7, v1

    move v9, v2

    move v11, v9

    move-object v8, v3

    const/4 v10, 0x0

    .line 8404
    :goto_72
    const-string v12, ":"

    const-string v13, ""

    if-ltz v4, :cond_230

    :try_start_78
    const-string v14, "end"

    invoke-virtual {v1, v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_230

    .line 8405
    const/16 v14, 0x3d

    invoke-virtual {v1, v14, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    .line 8406
    if-gez v14, :cond_8a

    add-int/lit8 v14, v4, -0x1

    .line 8407
    :cond_8a
    const/16 v15, 0x3b

    invoke-virtual {v1, v15, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    .line 8408
    if-ltz v15, :cond_227

    .line 8411
    if-ge v14, v15, :cond_9e

    add-int/lit8 v13, v14, 0x1

    invoke-virtual {v1, v13, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 8414
    :cond_9e
    const-string v6, "action="

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    const/16 v16, 0x1

    if-eqz v6, :cond_b1

    .line 8415
    invoke-virtual {v8, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 8416
    if-nez v9, :cond_21a

    .line 8417
    move/from16 v11, v16

    goto/16 :goto_21a

    .line 8422
    :cond_b1
    const-string v6, "category="

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_be

    .line 8423
    invoke-virtual {v8, v13}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_21a

    .line 8427
    :cond_be
    const-string/jumbo v6, "type="

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_cb

    .line 8428
    iput-object v13, v8, Landroid/content/Intent;->mType:Ljava/lang/String;

    goto/16 :goto_21a

    .line 8432
    :cond_cb
    const-string v6, "identifier="

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_d7

    .line 8433
    iput-object v13, v8, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    goto/16 :goto_21a

    .line 8437
    :cond_d7
    const-string/jumbo v6, "launchFlags="

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_f6

    .line 8438
    invoke-static {v13}, Landroid/content/Intent;->decodeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v8, Landroid/content/Intent;->mFlags:I

    .line 8439
    and-int/lit8 v6, p1, 0x4

    if-nez v6, :cond_21a

    .line 8440
    iget v6, v8, Landroid/content/Intent;->mFlags:I

    and-int/lit16 v6, v6, -0xc4

    iput v6, v8, Landroid/content/Intent;->mFlags:I

    goto/16 :goto_21a

    .line 8445
    :cond_f6
    const-string v6, "extendedLaunchFlags="

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_10a

    .line 8446
    invoke-static {v13}, Landroid/content/Intent;->decodeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v8, Landroid/content/Intent;->mExtendedFlags:I

    goto/16 :goto_21a

    .line 8450
    :cond_10a
    const-string/jumbo v6, "package="

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_117

    .line 8451
    iput-object v13, v8, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    goto/16 :goto_21a

    .line 8455
    :cond_117
    const-string v6, "component="

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_127

    .line 8456
    invoke-static {v13}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    iput-object v6, v8, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    goto/16 :goto_21a

    .line 8460
    :cond_127
    const-string/jumbo v6, "scheme="

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_14e

    .line 8461
    if-eqz v9, :cond_14b

    .line 8462
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v8, Landroid/content/Intent;->mData:Landroid/net/Uri;

    goto/16 :goto_21a

    .line 8464
    :cond_14b
    move-object v10, v13

    goto/16 :goto_21a

    .line 8469
    :cond_14e
    const-string/jumbo v6, "sourceBounds="

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_15f

    .line 8470
    invoke-static {v13}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v6

    iput-object v6, v8, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    goto/16 :goto_21a

    .line 8474
    :cond_15f
    add-int/lit8 v6, v4, 0x3

    if-ne v15, v6, :cond_174

    const-string v6, "SEL"

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_174

    .line 8475
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 8476
    move/from16 v9, v16

    goto/16 :goto_21a

    .line 8481
    :cond_174
    add-int/lit8 v6, v4, 0x2

    invoke-virtual {v1, v6, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 8483
    iget-object v12, v8, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v12, :cond_189

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    iput-object v12, v8, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 8484
    :cond_189
    iget-object v12, v8, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 8486
    const-string v14, "S."

    invoke-virtual {v1, v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_198

    invoke-virtual {v12, v6, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_21a

    .line 8487
    :cond_198
    const-string v14, "B."

    invoke-virtual {v1, v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_1a9

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    invoke-virtual {v12, v6, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_21a

    .line 8488
    :cond_1a9
    const-string v14, "b."

    invoke-virtual {v1, v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_1b9

    invoke-static {v13}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v13

    invoke-virtual {v12, v6, v13}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto :goto_21a

    .line 8489
    :cond_1b9
    const-string v14, "c."

    invoke-virtual {v1, v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_1c9

    invoke-virtual {v13, v2}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v12, v6, v13}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    goto :goto_21a

    .line 8490
    :cond_1c9
    const-string v14, "d."

    invoke-virtual {v1, v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_1d9

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    invoke-virtual {v12, v6, v13, v14}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_21a

    .line 8491
    :cond_1d9
    const-string v14, "f."

    invoke-virtual {v1, v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_1e9

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    invoke-virtual {v12, v6, v13}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_21a

    .line 8492
    :cond_1e9
    const-string v14, "i."

    invoke-virtual {v1, v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_1f9

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v6, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_21a

    .line 8493
    :cond_1f9
    const-string/jumbo v14, "l."

    invoke-virtual {v1, v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_20a

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-virtual {v12, v6, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_21a

    .line 8494
    :cond_20a
    const-string/jumbo v14, "s."

    invoke-virtual {v1, v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_21e

    invoke-static {v13}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v13

    invoke-virtual {v12, v6, v13}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 8499
    :cond_21a
    :goto_21a
    add-int/lit8 v4, v15, 0x1

    .line 8500
    goto/16 :goto_72

    .line 8495
    :cond_21e
    new-instance v0, Ljava/net/URISyntaxException;

    const-string/jumbo v2, "unknown EXTRA type"

    invoke-direct {v0, v1, v2, v4}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    .line 8409
    :cond_227
    new-instance v0, Ljava/net/URISyntaxException;

    const-string/jumbo v2, "uri end not found"

    invoke-direct {v0, v1, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 8502
    :cond_230
    if-eqz v9, :cond_23a

    .line 8504
    iget-object v2, v3, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-nez v2, :cond_239

    .line 8505
    invoke-virtual {v3, v8}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 8507
    :cond_239
    goto :goto_23b

    .line 8502
    :cond_23a
    move-object v3, v8

    .line 8510
    :goto_23b
    if-eqz v7, :cond_337

    .line 8511
    invoke-virtual {v7, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_263

    .line 8512
    const/4 v0, 0x7

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 8513
    if-eqz v10, :cond_31f

    .line 8514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_31f

    .line 8516
    :cond_263
    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31f

    .line 8517
    const/16 v0, 0xc

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_31e

    const/16 v0, 0xd

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_31e

    .line 8519
    const/16 v0, 0xe

    invoke-virtual {v7, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v5
    :try_end_281
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_78 .. :try_end_281} :catch_338

    .line 8520
    const-string v6, "android.intent.action.MAIN"

    if-gez v5, :cond_297

    .line 8522
    :try_start_285
    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decodeIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 8523
    if-nez v11, :cond_294

    .line 8524
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 8526
    :cond_294
    move-object v7, v13

    goto/16 :goto_31d

    .line 8529
    :cond_297
    nop

    .line 8530
    invoke-virtual {v7, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decodeIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 8532
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v0, v8, :cond_2de

    .line 8533
    invoke-virtual {v7, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    if-ltz v8, :cond_2d4

    .line 8535
    invoke-virtual {v7, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decodeIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 8536
    nop

    .line 8537
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v8, v0, :cond_2d1

    add-int/lit8 v0, v8, 0x1

    invoke-virtual {v7, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-ltz v5, :cond_2d1

    .line 8539
    nop

    .line 8540
    invoke-virtual {v7, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 8539
    invoke-static {v0}, Landroid/net/Uri;->decodeIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8541
    goto :goto_2df

    .line 8548
    :cond_2d1
    move v5, v8

    const/4 v0, 0x0

    goto :goto_2df

    .line 8545
    :cond_2d4
    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decodeIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v0, 0x0

    goto :goto_2df

    .line 8532
    :cond_2de
    const/4 v0, 0x0

    .line 8548
    :goto_2df
    if-nez v10, :cond_2e8

    .line 8550
    if-nez v11, :cond_2e6

    .line 8551
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 8553
    :cond_2e6
    move-object v7, v13

    goto :goto_31d

    .line 8554
    :cond_2e8
    if-nez v0, :cond_2fd

    .line 8555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_31d

    .line 8557
    :cond_2fd
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "://"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 8560
    :goto_31d
    goto :goto_31f

    .line 8561
    :cond_31e
    move-object v7, v13

    .line 8565
    :cond_31f
    :goto_31f
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_323
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_285 .. :try_end_323} :catch_338

    if-lez v0, :cond_337

    .line 8567
    :try_start_325
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v3, Landroid/content/Intent;->mData:Landroid/net/Uri;
    :try_end_32b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_325 .. :try_end_32b} :catch_32c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_325 .. :try_end_32b} :catch_338

    .line 8570
    goto :goto_337

    .line 8568
    :catch_32c
    move-exception v0

    .line 8569
    :try_start_32d
    new-instance v2, Ljava/net/URISyntaxException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
    :try_end_337
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_32d .. :try_end_337} :catch_338

    .line 8574
    :cond_337
    :goto_337
    return-object v3

    .line 8576
    :catch_338
    move-exception v0

    move v2, v4

    goto :goto_33c

    :catch_33b
    move-exception v0

    .line 8577
    :goto_33c
    new-instance v0, Ljava/net/URISyntaxException;

    const-string v3, "illegal Intent URI format"

    invoke-direct {v0, v1, v3, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0
.end method

.method public static greylist-max-r printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 56

    .line 9194
    const-string v52, "    [--selector]"

    const-string v53, "    [<URI> | <PACKAGE> | <COMPONENT>]"

    const-string v1, "<INTENT> specifications include these flags and arguments:"

    const-string v2, "    [-a <ACTION>] [-d <DATA_URI>] [-t <MIME_TYPE>] [-i <IDENTIFIER>]"

    const-string v3, "    [-c <CATEGORY> [-c <CATEGORY>] ...]"

    const-string v4, "    [-n <COMPONENT_NAME>]"

    const-string v5, "    [-e|--es <EXTRA_KEY> <EXTRA_STRING_VALUE> ...]"

    const-string v6, "    [--esn <EXTRA_KEY> ...]"

    const-string v7, "    [--ez <EXTRA_KEY> <EXTRA_BOOLEAN_VALUE> ...]"

    const-string v8, "    [--ei <EXTRA_KEY> <EXTRA_INT_VALUE> ...]"

    const-string v9, "    [--el <EXTRA_KEY> <EXTRA_LONG_VALUE> ...]"

    const-string v10, "    [--ef <EXTRA_KEY> <EXTRA_FLOAT_VALUE> ...]"

    const-string v11, "    [--ed <EXTRA_KEY> <EXTRA_DOUBLE_VALUE> ...]"

    const-string v12, "    [--eu <EXTRA_KEY> <EXTRA_URI_VALUE> ...]"

    const-string v13, "    [--ecn <EXTRA_KEY> <EXTRA_COMPONENT_NAME_VALUE>]"

    const-string v14, "    [--eia <EXTRA_KEY> <EXTRA_INT_VALUE>[,<EXTRA_INT_VALUE...]]"

    const-string v15, "        (multiple extras passed as Integer[])"

    const-string v16, "    [--eial <EXTRA_KEY> <EXTRA_INT_VALUE>[,<EXTRA_INT_VALUE...]]"

    const-string v17, "        (multiple extras passed as List<Integer>)"

    const-string v18, "    [--ela <EXTRA_KEY> <EXTRA_LONG_VALUE>[,<EXTRA_LONG_VALUE...]]"

    const-string v19, "        (multiple extras passed as Long[])"

    const-string v20, "    [--elal <EXTRA_KEY> <EXTRA_LONG_VALUE>[,<EXTRA_LONG_VALUE...]]"

    const-string v21, "        (multiple extras passed as List<Long>)"

    const-string v22, "    [--efa <EXTRA_KEY> <EXTRA_FLOAT_VALUE>[,<EXTRA_FLOAT_VALUE...]]"

    const-string v23, "        (multiple extras passed as Float[])"

    const-string v24, "    [--efal <EXTRA_KEY> <EXTRA_FLOAT_VALUE>[,<EXTRA_FLOAT_VALUE...]]"

    const-string v25, "        (multiple extras passed as List<Float>)"

    const-string v26, "    [--eda <EXTRA_KEY> <EXTRA_DOUBLE_VALUE>[,<EXTRA_DOUBLE_VALUE...]]"

    const-string v27, "        (multiple extras passed as Double[])"

    const-string v28, "    [--edal <EXTRA_KEY> <EXTRA_DOUBLE_VALUE>[,<EXTRA_DOUBLE_VALUE...]]"

    const-string v29, "        (multiple extras passed as List<Double>)"

    const-string v30, "    [--esa <EXTRA_KEY> <EXTRA_STRING_VALUE>[,<EXTRA_STRING_VALUE...]]"

    const-string v31, "        (multiple extras passed as String[]; to embed a comma into a string,"

    const-string v32, "         escape it using \"\\,\")"

    const-string v33, "    [--esal <EXTRA_KEY> <EXTRA_STRING_VALUE>[,<EXTRA_STRING_VALUE...]]"

    const-string v34, "        (multiple extras passed as List<String>; to embed a comma into a string,"

    const-string v35, "         escape it using \"\\,\")"

    const-string v36, "    [-f <FLAG>]"

    const-string v37, "    [--grant-read-uri-permission] [--grant-write-uri-permission]"

    const-string v38, "    [--grant-persistable-uri-permission] [--grant-prefix-uri-permission]"

    const-string v39, "    [--debug-log-resolution] [--exclude-stopped-packages]"

    const-string v40, "    [--include-stopped-packages]"

    const-string v41, "    [--activity-brought-to-front] [--activity-clear-top]"

    const-string v42, "    [--activity-clear-when-task-reset] [--activity-exclude-from-recents]"

    const-string v43, "    [--activity-launched-from-history] [--activity-multiple-task]"

    const-string v44, "    [--activity-no-animation] [--activity-no-history]"

    const-string v45, "    [--activity-no-user-action] [--activity-previous-is-top]"

    const-string v46, "    [--activity-reorder-to-front] [--activity-reset-task-if-needed]"

    const-string v47, "    [--activity-single-top] [--activity-clear-task]"

    const-string v48, "    [--activity-task-on-home] [--activity-match-external]"

    const-string v49, "    [--receiver-registered-only] [--receiver-replace-pending]"

    const-string v50, "    [--receiver-foreground] [--receiver-no-abort]"

    const-string v51, "    [--receiver-include-background]"

    filled-new-array/range {v1 .. v53}, [Ljava/lang/String;

    move-result-object v0

    .line 9249
    const/4 v1, 0x0

    :goto_6f
    const/16 v2, 0x35

    if-ge v1, v2, :cond_80

    aget-object v2, v0, v1

    .line 9250
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9251
    move-object/from16 v3, p0

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9249
    add-int/lit8 v1, v1, 0x1

    goto :goto_6f

    .line 9253
    :cond_80
    return-void
.end method

.method public static greylist-max-o restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 13055
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 13056
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 13058
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    .line 13059
    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_f
    const-string v4, "Intent"

    if-ltz v2, :cond_9b

    .line 13060
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    .line 13061
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 13062
    const-string v7, "action"

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 13063
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_97

    .line 13064
    :cond_28
    const-string v7, "data"

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 13065
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_97

    .line 13066
    :cond_38
    const-string/jumbo v7, "type"

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 13067
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_97

    .line 13068
    :cond_45
    const-string v7, "ident"

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 13069
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setIdentifier(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_97

    .line 13070
    :cond_51
    const-string v7, "component"

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_61

    .line 13071
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_97

    .line 13072
    :cond_61
    const-string v7, "flags"

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_73

    .line 13073
    const/16 v4, 0x10

    invoke-static {v6, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_97

    .line 13074
    :cond_73
    const-string/jumbo v7, "package"

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_80

    .line 13075
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_97

    .line 13077
    :cond_80
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreFromXml: unknown attribute="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13059
    :goto_97
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_f

    .line 13083
    :cond_9b
    :goto_9b
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v3, :cond_e5

    const/4 v5, 0x3

    if-ne v2, v5, :cond_aa

    .line 13084
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-ge v5, v1, :cond_e5

    .line 13085
    :cond_aa
    const/4 v5, 0x2

    if-ne v2, v5, :cond_9b

    .line 13086
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 13087
    const-string v5, "categories"

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ca

    .line 13088
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    .line 13089
    sub-int/2addr v2, v3

    :goto_be
    if-ltz v2, :cond_9b

    .line 13090
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 13089
    add-int/lit8 v2, v2, -0x1

    goto :goto_be

    .line 13093
    :cond_ca
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "restoreFromXml: unknown name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13094
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_9b

    .line 13099
    :cond_e5
    return-object v0
.end method

.method private greylist-max-o toUriFragment(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12

    .line 12353
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 12355
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/content/Intent;->toUriInner(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12356
    iget-object p2, v0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz p2, :cond_31

    .line 12357
    const-string p2, "SEL;"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12361
    move-object p2, v0

    iget-object v0, p2, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    iget-object p3, p2, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    iget-object p3, p3, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz p3, :cond_2a

    iget-object p2, p2, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    iget-object p2, p2, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    goto :goto_2b

    :cond_2a
    const/4 p2, 0x0

    :goto_2b
    move-object v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/content/Intent;->toUriInner(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12365
    :cond_31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_44

    .line 12366
    const-string p2, "#Intent;"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12367
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 12368
    const-string p2, "end"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12370
    :cond_44
    return-void
.end method

.method private greylist-max-o toUriInner(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    .line 12374
    const/16 p5, 0x3b

    if-eqz p2, :cond_16

    .line 12375
    const-string/jumbo v0, "scheme="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12377
    :cond_16
    iget-object p2, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz p2, :cond_35

    iget-object p2, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_35

    .line 12378
    const-string p2, "action="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-static {p3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12380
    :cond_35
    iget-object p2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    const/4 p3, 0x0

    if-eqz p2, :cond_5f

    .line 12381
    move p2, p3

    :goto_3b
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge p2, v0, :cond_5f

    .line 12382
    const-string v0, "category="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12381
    add-int/lit8 p2, p2, 0x1

    goto :goto_3b

    .line 12385
    :cond_5f
    iget-object p2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    const-string v0, "/"

    if-eqz p2, :cond_79

    .line 12386
    const-string/jumbo p2, "type="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12388
    :cond_79
    iget-object p2, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    if-eqz p2, :cond_90

    .line 12389
    const-string p2, "identifier="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12391
    :cond_90
    iget p2, p0, Landroid/content/Intent;->mFlags:I

    if-eqz p2, :cond_a8

    .line 12392
    const-string/jumbo p2, "launchFlags=0x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v1, p0, Landroid/content/Intent;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12394
    :cond_a8
    iget p2, p0, Landroid/content/Intent;->mExtendedFlags:I

    if-eqz p2, :cond_bf

    .line 12395
    const-string p2, "extendedLaunchFlags=0x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v1, p0, Landroid/content/Intent;->mExtendedFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 12396
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12398
    :cond_bf
    iget-object p2, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz p2, :cond_df

    iget-object p2, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_df

    .line 12399
    const-string/jumbo p2, "package="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p4, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-static {p4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12401
    :cond_df
    iget-object p2, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz p2, :cond_fa

    .line 12402
    const-string p2, "component="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p4, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 12403
    invoke-virtual {p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p4

    .line 12402
    invoke-static {p4, v0}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 12403
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12405
    :cond_fa
    iget-object p2, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz p2, :cond_116

    .line 12406
    const-string/jumbo p2, "sourceBounds="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p4, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    .line 12407
    invoke-virtual {p4}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 12408
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12410
    :cond_116
    iget-object p2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz p2, :cond_19b

    .line 12411
    iget-object p2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_124
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_19b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 12412
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 12414
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_13d

    const/16 v1, 0x53

    goto :goto_176

    .line 12415
    :cond_13d
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_144

    const/16 v1, 0x42

    goto :goto_176

    .line 12416
    :cond_144
    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_14b

    const/16 v1, 0x62

    goto :goto_176

    .line 12417
    :cond_14b
    instance-of v1, v0, Ljava/lang/Character;

    if-eqz v1, :cond_152

    const/16 v1, 0x63

    goto :goto_176

    .line 12418
    :cond_152
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_159

    const/16 v1, 0x64

    goto :goto_176

    .line 12419
    :cond_159
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_160

    const/16 v1, 0x66

    goto :goto_176

    .line 12420
    :cond_160
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_167

    const/16 v1, 0x69

    goto :goto_176

    .line 12421
    :cond_167
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_16e

    const/16 v1, 0x6c

    goto :goto_176

    .line 12422
    :cond_16e
    instance-of v1, v0, Ljava/lang/Short;

    if-eqz v1, :cond_175

    const/16 v1, 0x73

    goto :goto_176

    .line 12423
    :cond_175
    move v1, p3

    .line 12425
    :goto_176
    if-eqz v1, :cond_19a

    .line 12426
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12427
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12428
    invoke-static {p4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12429
    const/16 p4, 0x3d

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12430
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12431
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12433
    :cond_19a
    goto :goto_124

    .line 12435
    :cond_19b
    return-void
.end method


# virtual methods
.method public whitelist addCategory(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    .line 10576
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-nez v0, :cond_b

    .line 10577
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 10579
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 10580
    return-object p0
.end method

.method public blacklist addExtendedFlags(I)Landroid/content/Intent;
    .registers 3

    .line 11504
    iget v0, p0, Landroid/content/Intent;->mExtendedFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/content/Intent;->mExtendedFlags:I

    .line 11505
    return-object p0
.end method

.method public whitelist addFlags(I)Landroid/content/Intent;
    .registers 3

    .line 11487
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/content/Intent;->mFlags:I

    .line 11488
    return-object p0
.end method

.method public greylist-max-o canStripForHistory()Z
    .registers 2

    .line 10115
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isParcelled()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_c
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public blacklist checkCreatorToken()V
    .registers 3

    .line 12678
    sget-object v0, Landroid/content/Intent;->MARK_TRUSTED_TOKEN_PRESENT_ACTION:Ljava/util/function/Consumer;

    sget-object v1, Landroid/content/Intent;->ENABLE_TOKEN_VERIFY_ACTION:Ljava/util/function/Consumer;

    invoke-direct {p0, v0, v1}, Landroid/content/Intent;->forEachNestedCreatorToken(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 12679
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_10

    .line 12683
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->enableTokenVerification()V

    .line 12685
    :cond_10
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_19

    .line 12686
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0}, Landroid/content/ClipData;->setTokenVerificationEnabled()V

    .line 12688
    :cond_19
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2

    .line 8119
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public whitelist cloneFilter()Landroid/content/Intent;
    .registers 3

    .line 8127
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;I)V

    return-object v0
.end method

.method public blacklist cloneForCreatorToken()Landroid/content/Intent;
    .registers 4

    .line 8135
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    .line 8136
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iget-object v2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 8137
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 8138
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 8139
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iget v1, p0, Landroid/content/Intent;->mFlags:I

    and-int/lit16 v1, v1, 0xc3

    .line 8140
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 8141
    iget-object v1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v1, :cond_34

    .line 8142
    iget-object v1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v1}, Landroid/content/ClipData;->cloneOnlyUriItems()Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 8144
    :cond_34
    iget-object v1, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    iput-object v1, v0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    .line 8145
    return-object v0
.end method

.method public blacklist collectExtraIntentKeys()V
    .registers 2

    .line 12549
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->collectExtraIntentKeys(Z)V

    .line 12550
    return-void
.end method

.method public blacklist collectExtraIntentKeys(Z)V
    .registers 3

    .line 12565
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->preventIntentRedirect()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 12566
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-direct {p0, v0, p1}, Landroid/content/Intent;->collectNestedIntentKeysRecur(Ljava/util/Set;Z)V

    .line 12568
    :cond_e
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 12438
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->describeContents()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .registers 8

    .line 12185
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/content/Intent;->dumpDebugWithoutFieldId(Landroid/util/proto/ProtoOutputStream;ZZZZ)V

    .line 12186
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 12

    .line 12179
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Intent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZZZ)V

    .line 12180
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZZZ)V
    .registers 14

    .line 12191
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 12192
    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Landroid/content/Intent;->dumpDebugWithoutFieldId(Landroid/util/proto/ProtoOutputStream;ZZZZ)V

    .line 12193
    invoke-virtual {v1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 12194
    return-void
.end method

.method public whitelist fillIn(Landroid/content/Intent;I)I
    .registers 8

    .line 11779
    nop

    .line 11780
    nop

    .line 11781
    iget-object v0, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_10

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_16

    .line 11783
    :cond_10
    iget-object v0, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    .line 11784
    move v0, v1

    goto :goto_17

    .line 11786
    :cond_16
    move v0, v2

    :goto_17
    iget-object v3, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-nez v3, :cond_1f

    iget-object v3, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v3, :cond_36

    :cond_1f
    iget-object v3, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-nez v3, :cond_27

    iget-object v3, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v3, :cond_2b

    :cond_27
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_36

    .line 11789
    :cond_2b
    iget-object v2, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iput-object v2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 11790
    iget-object v2, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    iput-object v2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 11791
    or-int/lit8 v0, v0, 0x2

    .line 11792
    move v2, v1

    .line 11794
    :cond_36
    iget-object v3, p1, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    if-eqz v3, :cond_48

    iget-object v3, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    if-eqz v3, :cond_42

    and-int/lit16 v3, p2, 0x100

    if-eqz v3, :cond_48

    .line 11796
    :cond_42
    iget-object v3, p1, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    iput-object v3, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    .line 11797
    or-int/lit16 v0, v0, 0x100

    .line 11799
    :cond_48
    iget-object v3, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v3, :cond_63

    iget-object v3, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v3, :cond_54

    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_63

    .line 11801
    :cond_54
    iget-object v3, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v3, :cond_61

    .line 11802
    new-instance v3, Landroid/util/ArraySet;

    iget-object v4, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v3, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 11804
    :cond_61
    or-int/lit8 v0, v0, 0x4

    .line 11806
    :cond_63
    iget-object v3, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v3, :cond_79

    iget-object v3, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v3, :cond_6f

    and-int/lit8 v3, p2, 0x10

    if-eqz v3, :cond_79

    .line 11809
    :cond_6f
    iget-object v3, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-nez v3, :cond_79

    .line 11810
    iget-object v3, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    iput-object v3, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 11811
    or-int/lit8 v0, v0, 0x10

    .line 11816
    :cond_79
    iget-object v3, p1, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v3, :cond_93

    and-int/lit8 v3, p2, 0x40

    if-eqz v3, :cond_93

    .line 11817
    iget-object v3, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-nez v3, :cond_93

    .line 11818
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p1, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v3, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    .line 11819
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 11820
    or-int/lit8 v0, v0, 0x40

    .line 11823
    :cond_93
    iget-object v3, p1, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v3, :cond_a6

    iget-object v3, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v3, :cond_9f

    and-int/lit16 v3, p2, 0x80

    if-eqz v3, :cond_a6

    .line 11825
    :cond_9f
    iget-object v2, p1, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    iput-object v2, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    .line 11826
    or-int/lit16 v0, v0, 0x80

    .line 11827
    move v2, v1

    .line 11832
    :cond_a6
    iget-object v3, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_b4

    and-int/lit8 v3, p2, 0x8

    if-eqz v3, :cond_b4

    .line 11833
    iget-object v3, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    iput-object v3, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 11834
    or-int/lit8 v0, v0, 0x8

    .line 11836
    :cond_b4
    iget v3, p0, Landroid/content/Intent;->mFlags:I

    iget v4, p1, Landroid/content/Intent;->mFlags:I

    or-int/2addr v3, v4

    iput v3, p0, Landroid/content/Intent;->mFlags:I

    .line 11837
    iget v3, p0, Landroid/content/Intent;->mExtendedFlags:I

    iget v4, p1, Landroid/content/Intent;->mExtendedFlags:I

    or-int/2addr v3, v4

    iput v3, p0, Landroid/content/Intent;->mExtendedFlags:I

    .line 11838
    iget-object v3, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_d9

    iget-object v3, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_ce

    and-int/lit8 p2, p2, 0x20

    if-eqz p2, :cond_d9

    .line 11840
    :cond_ce
    new-instance p2, Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-direct {p2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p2, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    .line 11841
    or-int/lit8 v0, v0, 0x20

    .line 11843
    :cond_d9
    iget-object p2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez p2, :cond_eb

    .line 11844
    iget-object p2, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz p2, :cond_107

    .line 11845
    new-instance p2, Landroid/os/Bundle;

    iget-object v2, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {p2, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object p2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11846
    goto :goto_108

    .line 11848
    :cond_eb
    iget-object p2, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz p2, :cond_107

    .line 11850
    :try_start_ef
    new-instance p2, Landroid/os/Bundle;

    iget-object v3, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {p2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 11851
    iget-object v3, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 11852
    iput-object p2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;
    :try_end_fd
    .catch Ljava/lang/RuntimeException; {:try_start_ef .. :try_end_fd} :catch_ff

    .line 11853
    nop

    .line 11861
    goto :goto_108

    .line 11854
    :catch_ff
    move-exception p2

    .line 11860
    const-string v1, "Intent"

    const-string v3, "Failure filling in extras"

    invoke-static {v1, v3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11863
    :cond_107
    move v1, v2

    :goto_108
    iget-object p2, p1, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    invoke-direct {p0, p2, v0}, Landroid/content/Intent;->fillInCreatorTokenInfo(Landroid/content/Intent$CreatorTokenInfo;I)V

    .line 11864
    if-eqz v1, :cond_11c

    iget p2, p0, Landroid/content/Intent;->mContentUserHint:I

    const/4 v1, -0x2

    if-ne p2, v1, :cond_11c

    iget p2, p1, Landroid/content/Intent;->mContentUserHint:I

    if-eq p2, v1, :cond_11c

    .line 11866
    iget p1, p1, Landroid/content/Intent;->mContentUserHint:I

    iput p1, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 11868
    :cond_11c
    return v0
.end method

.method public whitelist filterEquals(Landroid/content/Intent;)Z
    .registers 5

    .line 11979
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 11980
    return v0

    .line 11982
    :cond_4
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v0

    .line 11983
    :cond_f
    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iget-object v2, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v0

    .line 11984
    :cond_1a
    iget-object v1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return v0

    .line 11985
    :cond_25
    iget-object v1, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v0

    .line 11986
    :cond_30
    iget-object v1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    return v0

    .line 11987
    :cond_3b
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    return v0

    .line 11988
    :cond_46
    iget-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    iget-object p1, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_51

    return v0

    .line 11990
    :cond_51
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist filterHashCode()I
    .registers 3

    .line 12002
    nop

    .line 12003
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 12004
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 12006
    :cond_d
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_18

    .line 12007
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 12009
    :cond_18
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v0, :cond_23

    .line 12010
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 12012
    :cond_23
    iget-object v0, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_2e

    .line 12013
    iget-object v0, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 12015
    :cond_2e
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v0, :cond_39

    .line 12016
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 12018
    :cond_39
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_44

    .line 12019
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 12021
    :cond_44
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_4f

    .line 12022
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 12024
    :cond_4f
    return v1
.end method

.method public greylist-max-o fixUris(I)V
    .registers 7

    .line 13385
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 13386
    if-eqz v0, :cond_c

    .line 13387
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 13389
    :cond_c
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_15

    .line 13390
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0, p1}, Landroid/content/ClipData;->fixUris(I)V

    .line 13392
    :cond_15
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 13393
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "android.intent.extra.STREAM"

    if-eqz v1, :cond_35

    .line 13394
    const-class v0, Landroid/net/Uri;

    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 13395
    if-eqz v0, :cond_34

    .line 13396
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 13398
    :cond_34
    goto :goto_81

    :cond_35
    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 13399
    const-class v0, Landroid/net/Uri;

    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 13400
    if-eqz v0, :cond_80

    .line 13401
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13402
    const/4 v3, 0x0

    :goto_4b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_61

    .line 13403
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    invoke-static {v4, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13402
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 13405
    :cond_61
    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_80

    .line 13407
    :cond_65
    invoke-direct {p0}, Landroid/content/Intent;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 13408
    const-class v0, Landroid/net/Uri;

    const-string/jumbo v1, "output"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 13409
    if-eqz v0, :cond_81

    .line 13410
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_81

    .line 13407
    :cond_80
    :goto_80
    nop

    .line 13413
    :cond_81
    :goto_81
    return-void
.end method

.method public blacklist forEachNestedCreatorToken(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 12692
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;->forEachNestedCreatorToken(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 12693
    return-void
.end method

.method public whitelist getAction()Ljava/lang/String;
    .registers 2

    .line 9266
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getBooleanArrayExtra(Ljava/lang/String;)[Z
    .registers 3

    .line 9896
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object p1

    :goto_c
    return-object p1
.end method

.method public whitelist getBooleanExtra(Ljava/lang/String;Z)Z
    .registers 4

    .line 9550
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_5

    goto :goto_b

    .line 9551
    :cond_5
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 9550
    :goto_b
    return p2
.end method

.method public whitelist getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3

    .line 10036
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    :goto_c
    return-object p1
.end method

.method public whitelist getByteArrayExtra(Ljava/lang/String;)[B
    .registers 3

    .line 9910
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    :goto_c
    return-object p1
.end method

.method public whitelist getByteExtra(Ljava/lang/String;B)B
    .registers 4

    .line 9567
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_5

    goto :goto_f

    .line 9568
    :cond_5
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    .line 9567
    :goto_f
    return p2
.end method

.method public whitelist getCategories()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9437
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    return-object v0
.end method

.method public whitelist getCharArrayExtra(Ljava/lang/String;)[C
    .registers 3

    .line 9938
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharArray(Ljava/lang/String;)[C

    move-result-object p1

    :goto_c
    return-object p1
.end method

.method public whitelist getCharExtra(Ljava/lang/String;C)C
    .registers 4

    .line 9601
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_5

    goto :goto_b

    .line 9602
    :cond_5
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getChar(Ljava/lang/String;C)C

    move-result p2

    .line 9601
    :goto_b
    return p2
.end method

.method public whitelist getCharSequenceArrayExtra(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .registers 3

    .line 10022
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p1

    :goto_c
    return-object p1
.end method

.method public whitelist getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 9882
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_c
    return-object p1
.end method

.method public whitelist getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 3

    .line 9698
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_c
    return-object p1
.end method

.method public whitelist getClipData()Landroid/content/ClipData;
    .registers 2

    .line 9457
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public whitelist getComponent()Landroid/content/ComponentName;
    .registers 2

    .line 10195
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public greylist-max-o getContentUserHint()I
    .registers 2

    .line 9462
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    return v0
.end method

.method public blacklist getCreatorToken()Landroid/os/IBinder;
    .registers 2

    .line 12526
    iget-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    invoke-static {v0}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fgetmCreatorToken(Landroid/content/Intent$CreatorTokenInfo;)Landroid/os/IBinder;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist getData()Landroid/net/Uri;
    .registers 2

    .line 9281
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getDataString()Ljava/lang/String;
    .registers 2

    .line 9289
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public whitelist getDoubleArrayExtra(Ljava/lang/String;)[D
    .registers 3

    .line 9994
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object p1

    :goto_c
    return-object p1
.end method

.method public whitelist getDoubleExtra(Ljava/lang/String;D)D
    .registers 5

    .line 9669
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_5

    goto :goto_b

    .line 9670
    :cond_5
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide p2

    .line 9669
    :goto_b
    return-wide p2
.end method

.method public blacklist getExtendedFlags()I
    .registers 2

    .line 10159
    iget v0, p0, Landroid/content/Intent;->mExtendedFlags:I

    return v0
.end method

.method public greylist getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9534
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public greylist getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10076
    nop

    .line 10077
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_e

    .line 10078
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 10079
    if-eqz p1, :cond_e

    .line 10080
    move-object p2, p1

    .line 10084
    :cond_e
    return-object p2
.end method

.method public blacklist getExtraIntentKeys()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/Intent$NestedIntentKey;",
            ">;"
        }
    .end annotation

    .line 12531
    iget-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    invoke-static {v0}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fgetmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;)Landroid/util/ArraySet;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 3

    .line 10094
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_c

    .line 10095
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_d

    .line 10096
    :cond_c
    const/4 v0, 0x0

    .line 10094
    :goto_d
    return-object v0
.end method

.method public blacklist getExtrasTotalSize()I
    .registers 2

    .line 10104
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_b

    .line 10105
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->getSize()I

    move-result v0

    goto :goto_c

    .line 10106
    :cond_b
    const/4 v0, 0x0

    .line 10104
    :goto_c
    return v0
.end method

.method public whitelist getFlags()I
    .registers 2

    .line 10143
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    return v0
.end method

.method public whitelist getFloatArrayExtra(Ljava/lang/String;)[F
    .registers 3

    .line 9980
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object p1

    :goto_c
    return-object p1
.end method

.method public whitelist getFloatExtra(Ljava/lang/String;F)F
    .registers 4

    .line 9652
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_5

    goto :goto_b

    .line 9653
    :cond_5
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p2

    .line 9652
    :goto_b
    return p2
.end method

.method public greylist getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10055
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    :goto_c
    return-object p1
.end method

.method public whitelist getIdentifier()Ljava/lang/String;
    .registers 2

    .line 9410
    iget-object v0, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getIntArrayExtra(Ljava/lang/String;)[I
    .registers 3

    .line 9952
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    :goto_c
    return-object p1
.end method

.method public whitelist getIntExtra(Ljava/lang/String;I)I
    .registers 4

    .line 9618
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_5

    goto :goto_b

    .line 9619
    :cond_5
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 9618
    :goto_b
    return p2
.end method

.method public whitelist getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 9852
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_c
    return-object p1
.end method

.method public greylist-max-o getLaunchToken()Ljava/lang/String;
    .registers 2

    .line 9467
    iget-object v0, p0, Landroid/content/Intent;->mLaunchToken:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLongArrayExtra(Ljava/lang/String;)[J
    .registers 3

    .line 9966
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object p1

    :goto_c
    return-object p1
.end method

.method public whitelist getLongExtra(Ljava/lang/String;J)J
    .registers 5

    .line 9635
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_5

    goto :goto_b

    .line 9636
    :cond_5
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    .line 9635
    :goto_b
    return-wide p2
.end method

.method public blacklist getOriginalIntent()Landroid/content/Intent;
    .registers 2

    .line 9328
    iget-object v0, p0, Landroid/content/Intent;->mOriginalIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist getPackage()Ljava/lang/String;
    .registers 2

    .line 10180
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9749
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    :goto_c
    return-object p1
.end method

.method public whitelist getParcelableArrayExtra(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 9766
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    :goto_c
    return-object p1
.end method

.method public whitelist getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9785
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_c
    return-object p1
.end method

.method public whitelist getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 9804
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_c
    return-object p1
.end method

.method public whitelist getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9716
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    :goto_c
    return-object p1
.end method

.method public whitelist getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 9731
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    :goto_c
    return-object p1
.end method

.method public whitelist getScheme()Ljava/lang/String;
    .registers 2

    .line 9305
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public whitelist getSelector()Landroid/content/Intent;
    .registers 2

    .line 9447
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
    .registers 3

    .line 9821
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    :goto_c
    return-object p1
.end method

.method public whitelist getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 9837
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p1

    :goto_c
    return-object p1
.end method

.method public whitelist getShortArrayExtra(Ljava/lang/String;)[S
    .registers 3

    .line 9924
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getShortArray(Ljava/lang/String;)[S

    move-result-object p1

    :goto_c
    return-object p1
.end method

.method public whitelist getShortExtra(Ljava/lang/String;S)S
    .registers 4

    .line 9584
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_5

    goto :goto_b

    .line 9585
    :cond_5
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getShort(Ljava/lang/String;S)S

    move-result p2

    .line 9584
    :goto_b
    return p2
.end method

.method public whitelist getSourceBounds()Landroid/graphics/Rect;
    .registers 2

    .line 10204
    iget-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    .line 10008
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :goto_c
    return-object p1
.end method

.method public whitelist getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9867
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_c
    return-object p1
.end method

.method public whitelist getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 9684
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_c
    return-object p1
.end method

.method public whitelist getType()Ljava/lang/String;
    .registers 2

    .line 9319
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist hasCategory(Ljava/lang/String;)Z
    .registers 3

    .line 9424
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public whitelist hasExtra(Ljava/lang/String;)Z
    .registers 3

    .line 9494
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public whitelist hasFileDescriptors()Z
    .registers 2

    .line 9502
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public greylist-max-o hasWebURI()Z
    .registers 4

    .line 13325
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 13326
    return v1

    .line 13328
    :cond_8
    invoke-virtual {p0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 13329
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 13330
    return v1

    .line 13332
    :cond_13
    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_23
    const/4 v1, 0x1

    :cond_24
    return v1
.end method

.method public greylist-max-o isDocument()Z
    .registers 3

    .line 13671
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public greylist isExcludingStopped()Z
    .registers 3

    .line 10165
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isImplicitImageCaptureIntent()Z
    .registers 2

    .line 13351
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-nez v0, :cond_10

    invoke-direct {p0}, Landroid/content/Intent;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public whitelist isMismatchingFilter()Z
    .registers 3

    .line 13377
    iget v0, p0, Landroid/content/Intent;->mExtendedFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public greylist-max-o isWebIntent()Z
    .registers 3

    .line 13337
    const-string v0, "android.intent.action.VIEW"

    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 13338
    invoke-virtual {p0}, Landroid/content/Intent;->hasWebURI()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 13337
    :goto_13
    return v0
.end method

.method public greylist-max-o maybeStripForHistory()Landroid/content/Intent;
    .registers 3

    .line 10126
    invoke-virtual {p0}, Landroid/content/Intent;->canStripForHistory()Z

    move-result v0

    if-nez v0, :cond_7

    .line 10127
    return-object p0

    .line 10129
    :cond_7
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;I)V

    return-object v0
.end method

.method public blacklist mergeExtras(Landroid/content/Intent;Landroid/os/BundleMerger;)V
    .registers 4

    .line 11921
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    iget-object p1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p2, v0, p1}, Landroid/os/BundleMerger;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11922
    return-void
.end method

.method public greylist-max-o migrateExtraStreamToClipData()Z
    .registers 2

    .line 13425
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public blacklist migrateExtraStreamToClipData(Landroid/content/Context;)Z
    .registers 15

    .line 13440
    const-string/jumbo v0, "output"

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isParcelled()Z

    move-result v1

    if-eqz v1, :cond_11

    return v2

    .line 13443
    :cond_11
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_18

    return v2

    .line 13445
    :cond_18
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 13446
    const-string v3, "android.intent.action.CHOOSER"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 13452
    nop

    .line 13454
    :try_start_25
    const-string v0, "android.intent.extra.INTENT"

    const-class v1, Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 13455
    if-eqz v0, :cond_37

    .line 13456
    invoke-virtual {v0, p1}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    move-result v0
    :try_end_35
    .catch Ljava/lang/ClassCastException; {:try_start_25 .. :try_end_35} :catch_39

    or-int/2addr v0, v2

    goto :goto_38

    .line 13455
    :cond_37
    move v0, v2

    .line 13459
    :goto_38
    goto :goto_3b

    .line 13458
    :catch_39
    move-exception v0

    move v0, v2

    .line 13461
    :goto_3b
    :try_start_3b
    const-string v1, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 13462
    if-eqz v1, :cond_55

    .line 13463
    nop

    :goto_44
    array-length v3, v1

    if-ge v2, v3, :cond_55

    .line 13464
    aget-object v3, v1, v2

    check-cast v3, Landroid/content/Intent;

    .line 13465
    if-eqz v3, :cond_52

    .line 13466
    invoke-virtual {v3, p1}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    move-result v3
    :try_end_51
    .catch Ljava/lang/ClassCastException; {:try_start_3b .. :try_end_51} :catch_56

    or-int/2addr v0, v3

    .line 13463
    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 13471
    :cond_55
    goto :goto_57

    .line 13470
    :catch_56
    move-exception p1

    .line 13472
    :goto_57
    return v0

    .line 13474
    :cond_58
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "android.intent.extra.HTML_TEXT"

    const-string v5, "android.intent.extra.TEXT"

    const-string v6, "android.intent.extra.STREAM"

    const/4 v7, 0x0

    const/16 v8, 0x440

    const-string v9, "Intent"

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v3, :cond_be

    .line 13476
    :try_start_6d
    const-class v0, Landroid/net/Uri;

    invoke-virtual {p0, v6, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 13477
    invoke-virtual {p0, v5}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 13478
    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 13479
    if-nez v0, :cond_83

    if-nez v1, :cond_83

    if-eqz v3, :cond_bc

    .line 13480
    :cond_83
    new-instance v4, Landroid/content/ClipData;

    .line 13481
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/content/ClipData$Item;

    invoke-direct {v6, v1, v3, v7, v0}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    invoke-direct {v4, v7, v5, v6}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 13483
    invoke-virtual {p0, v4}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 13484
    if-eqz v0, :cond_ba

    invoke-direct {p0, v11}, Landroid/content/Intent;->isMissingGrantFlag(I)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 13486
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->implicitUriGrantsRestrictedForSendAction()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 13487
    const-string v0, "Skipping implicit URI grants for android.intent.action.SEND action because it is restricted"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13489
    goto :goto_b0

    .line 13491
    :cond_ac
    invoke-virtual {p0, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 13492
    move v10, v11

    .line 13494
    :goto_b0
    nop

    .line 13496
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 13494
    invoke-static {v8, p1, v10, v11, v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIII)V
    :try_end_ba
    .catch Ljava/lang/ClassCastException; {:try_start_6d .. :try_end_ba} :catch_bb

    .line 13501
    :cond_ba
    return v11

    .line 13503
    :catch_bb
    move-exception p1

    .line 13504
    :cond_bc
    goto/16 :goto_1ab

    .line 13506
    :cond_be
    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_144

    .line 13508
    :try_start_c6
    const-class v0, Landroid/net/Uri;

    invoke-virtual {p0, v6, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 13509
    invoke-virtual {p0, v5}, Landroid/content/Intent;->getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 13510
    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 13511
    nop

    .line 13512
    if-eqz v0, :cond_dc

    .line 13513
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_dd

    .line 13512
    :cond_dc
    const/4 v4, -0x1

    .line 13515
    :goto_dd
    if-eqz v1, :cond_ec

    .line 13516
    if-ltz v4, :cond_e8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v4, v5, :cond_e8

    .line 13518
    return v2

    .line 13520
    :cond_e8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 13522
    :cond_ec
    if-eqz v3, :cond_fb

    .line 13523
    if-ltz v4, :cond_f7

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v4, v5, :cond_f7

    .line 13525
    return v2

    .line 13527
    :cond_f7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 13529
    :cond_fb
    if-lez v4, :cond_143

    .line 13530
    new-instance v5, Landroid/content/ClipData;

    .line 13531
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    .line 13532
    invoke-static {v0, v1, v3, v2}, Landroid/content/Intent;->makeClipItem(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Landroid/content/ClipData$Item;

    move-result-object v12

    invoke-direct {v5, v7, v6, v12}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 13534
    move v6, v11

    :goto_10f
    if-ge v6, v4, :cond_11b

    .line 13535
    invoke-static {v0, v1, v3, v6}, Landroid/content/Intent;->makeClipItem(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Landroid/content/ClipData$Item;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 13534
    add-int/lit8 v6, v6, 0x1

    goto :goto_10f

    .line 13538
    :cond_11b
    invoke-virtual {p0, v5}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 13539
    if-eqz v0, :cond_141

    invoke-direct {p0, v11}, Landroid/content/Intent;->isMissingGrantFlag(I)Z

    move-result v0

    if-eqz v0, :cond_141

    .line 13542
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->implicitUriGrantsRestrictedForSendmultipleImagecaptureActions()Z

    move-result v0

    if-eqz v0, :cond_133

    .line 13543
    const-string v0, "Skipping implicit URI grants for android.intent.action.SEND_MULTIPLE action because it is restricted"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13545
    move v0, v10

    goto :goto_137

    .line 13547
    :cond_133
    invoke-virtual {p0, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 13548
    move v0, v11

    .line 13550
    :goto_137
    nop

    .line 13552
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 13550
    invoke-static {v8, p1, v0, v11, v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIII)V
    :try_end_141
    .catch Ljava/lang/ClassCastException; {:try_start_c6 .. :try_end_141} :catch_142

    .line 13557
    :cond_141
    return v11

    .line 13559
    :catch_142
    move-exception p1

    .line 13560
    :cond_143
    goto :goto_1ab

    .line 13561
    :cond_144
    invoke-direct {p0}, Landroid/content/Intent;->isImageCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_1ab

    .line 13564
    :try_start_14a
    const-class v1, Landroid/net/Uri;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;
    :try_end_152
    .catch Ljava/lang/ClassCastException; {:try_start_14a .. :try_end_152} :catch_1a9

    .line 13567
    nop

    .line 13569
    if-eqz v1, :cond_1ab

    .line 13570
    invoke-direct {p0, p1, v1}, Landroid/content/Intent;->maybeConvertFileToContentUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 13571
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 13573
    const-string v0, ""

    invoke-static {v0, v1}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 13575
    invoke-direct {p0, v11}, Landroid/content/Intent;->isMissingGrantFlag(I)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_187

    .line 13578
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->implicitUriGrantsRestrictedForSendmultipleImagecaptureActions()Z

    move-result v0

    if-eqz v0, :cond_179

    .line 13579
    const-string v0, "Skipping implicit URI read grants for ImageCapture action because it is restricted"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13582
    move v0, v10

    goto :goto_17d

    .line 13584
    :cond_179
    invoke-virtual {p0, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 13585
    move v0, v11

    .line 13587
    :goto_17d
    nop

    .line 13588
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 13587
    invoke-static {v8, v2, v0, v11, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIII)V

    .line 13593
    :cond_187
    invoke-direct {p0, v10}, Landroid/content/Intent;->isMissingGrantFlag(I)Z

    move-result v0

    if-eqz v0, :cond_1a8

    .line 13596
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->implicitUriGrantsRestrictedForSendmultipleImagecaptureActions()Z

    move-result v0

    if-eqz v0, :cond_19a

    .line 13597
    const-string v0, "Skipping implicit URI write grants for ImageCapture action because it is restricted"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13600
    move v0, v10

    goto :goto_19e

    .line 13602
    :cond_19a
    invoke-virtual {p0, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 13603
    move v0, v11

    .line 13605
    :goto_19e
    nop

    .line 13606
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 13605
    invoke-static {v8, p1, v0, v10, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIII)V

    .line 13611
    :cond_1a8
    return v11

    .line 13565
    :catch_1a9
    move-exception p1

    .line 13566
    return v2

    .line 13615
    :cond_1ab
    :goto_1ab
    return v2
.end method

.method public blacklist prepareToEnterProcess(ILandroid/content/AttributionSource;)V
    .registers 6

    .line 13286
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setDefusable(Z)V

    .line 13288
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 13291
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->prepareToEnterProcess(ILandroid/content/AttributionSource;)V

    .line 13293
    :cond_e
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_17

    .line 13294
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0, p2}, Landroid/content/ClipData;->prepareToEnterProcess(Landroid/content/AttributionSource;)V

    .line 13296
    :cond_17
    iget-object v0, p0, Landroid/content/Intent;->mOriginalIntent:Landroid/content/Intent;

    if-eqz v0, :cond_20

    .line 13299
    iget-object v0, p0, Landroid/content/Intent;->mOriginalIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->prepareToEnterProcess(ILandroid/content/AttributionSource;)V

    .line 13302
    :cond_20
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_38

    .line 13303
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_38

    .line 13304
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    invoke-virtual {p0, v0}, Landroid/content/Intent;->fixUris(I)V

    .line 13305
    iput v1, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 13309
    :cond_38
    iget v0, p0, Landroid/content/Intent;->mLocalFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/content/Intent;->mLocalFlags:I

    .line 13310
    invoke-virtual {p0}, Landroid/content/Intent;->checkCreatorToken()V

    .line 13314
    iget-object p1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz p1, :cond_63

    iget-object p1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    const-string v0, "android.bluetooth."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_63

    .line 13315
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 13316
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 13317
    if-eqz p1, :cond_63

    .line 13318
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothDevice;->prepareToEnterProcess(Landroid/content/AttributionSource;)V

    .line 13321
    :cond_63
    return-void
.end method

.method public blacklist prepareToEnterProcess(ZLandroid/content/AttributionSource;)V
    .registers 3

    .line 13272
    if-eqz p1, :cond_7

    .line 13273
    const/4 p1, 0x4

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->prepareToEnterProcess(ILandroid/content/AttributionSource;)V

    goto :goto_b

    .line 13275
    :cond_7
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->prepareToEnterProcess(ILandroid/content/AttributionSource;)V

    .line 13277
    :goto_b
    return-void
.end method

.method public greylist-max-r prepareToLeaveProcess(Landroid/content/Context;)V
    .registers 4

    .line 13145
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    .line 13146
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr v1, p1

    goto :goto_26

    .line 13147
    :cond_15
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v0, :cond_25

    .line 13148
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr v1, p1

    goto :goto_26

    .line 13153
    :cond_25
    nop

    .line 13155
    :goto_26
    invoke-virtual {p0, v1}, Landroid/content/Intent;->prepareToLeaveProcess(Z)V

    .line 13156
    return-void
.end method

.method public greylist-max-o prepareToLeaveProcess(Z)V
    .registers 3

    .line 13165
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->prepareToLeaveProcess(ZZ)V

    .line 13166
    return-void
.end method

.method blacklist prepareToLeaveProcess(ZZ)V
    .registers 13

    .line 13172
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 13174
    iget-object v1, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v1, :cond_d

    .line 13175
    iget-object v1, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->prepareToLeaveProcess(ZZ)V

    .line 13177
    :cond_d
    iget-object v1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v1, :cond_1a

    .line 13178
    iget-object v1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/content/ClipData;->prepareToLeaveProcess(ZI)V

    .line 13180
    :cond_1a
    iget-object v1, p0, Landroid/content/Intent;->mOriginalIntent:Landroid/content/Intent;

    if-eqz v1, :cond_23

    .line 13181
    iget-object v1, p0, Landroid/content/Intent;->mOriginalIntent:Landroid/content/Intent;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->prepareToLeaveProcess(ZZ)V

    .line 13184
    :cond_23
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_40

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isParcelled()Z

    move-result v1

    if-nez v1, :cond_40

    .line 13185
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 13186
    instance-of v2, v1, Landroid/content/Intent;

    if-eqz v2, :cond_40

    .line 13187
    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->prepareToLeaveProcess(ZZ)V

    .line 13191
    :cond_40
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    const/4 v2, 0x1

    const-string v3, "Intent.getData()"

    const/16 v4, 0x10

    const/16 v5, 0x8

    const/4 v6, -0x1

    const/4 v7, 0x2

    const-string v8, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    if-eqz v1, :cond_128

    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v1, :cond_128

    invoke-static {}, Landroid/os/StrictMode;->vmFileUriExposureEnabled()Z

    move-result v1

    if-eqz v1, :cond_128

    if-eqz p1, :cond_128

    .line 13193
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_210

    :cond_64
    goto/16 :goto_11d

    :sswitch_66
    const-string v9, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    const/4 v1, 0x7

    goto/16 :goto_11e

    :sswitch_71
    const-string v9, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    move v1, v7

    goto/16 :goto_11e

    :sswitch_7c
    const-string v9, "android.intent.action.PACKAGE_VERIFIED"

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    const/16 v1, 0xf

    goto/16 :goto_11e

    :sswitch_88
    const-string v9, "android.intent.action.PACKAGE_ENABLE_ROLLBACK"

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    move v1, v4

    goto/16 :goto_11e

    :sswitch_93
    const-string v9, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    move v1, v5

    goto/16 :goto_11e

    :sswitch_9e
    const-string v9, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    const/16 v1, 0xa

    goto/16 :goto_11e

    :sswitch_aa
    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    const/16 v1, 0xc

    goto/16 :goto_11e

    :sswitch_b4
    const-string v9, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    const/16 v1, 0xd

    goto/16 :goto_11e

    :sswitch_c0
    const-string v9, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    const/4 v1, 0x6

    goto :goto_11e

    :sswitch_ca
    const-string v9, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    const/4 v1, 0x3

    goto :goto_11e

    :sswitch_d4
    const-string v9, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    const/16 v1, 0x9

    goto :goto_11e

    :sswitch_df
    const-string v9, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    move v1, v2

    goto :goto_11e

    :sswitch_e9
    const-string v9, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    const/16 v1, 0xb

    goto :goto_11e

    :sswitch_f4
    const-string v9, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    const/4 v1, 0x4

    goto :goto_11e

    :sswitch_fe
    const-string v9, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    move v1, v0

    goto :goto_11e

    :sswitch_108
    const-string v9, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    const/4 v1, 0x5

    goto :goto_11e

    :sswitch_112
    const-string v9, "android.intent.action.PACKAGE_NEEDS_INTEGRITY_VERIFICATION"

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    const/16 v1, 0xe

    goto :goto_11e

    :goto_11d
    move v1, v6

    :goto_11e
    packed-switch v1, :pswitch_data_256

    .line 13214
    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->checkFileUriExposed(Ljava/lang/String;)V

    goto :goto_128

    .line 13212
    :pswitch_127
    nop

    .line 13218
    :cond_128
    :goto_128
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v1, :cond_164

    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v1, :cond_164

    invoke-static {}, Landroid/os/StrictMode;->vmContentUriWithoutPermissionEnabled()Z

    move-result v1

    if-eqz v1, :cond_164

    if-eqz p1, :cond_164

    .line 13220
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_27c

    :cond_141
    goto :goto_155

    :sswitch_142
    const-string v2, "android.intent.action.PROVIDER_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_141

    goto :goto_156

    :sswitch_14b
    const-string v0, "android.provider.action.QUICK_CONTACT"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_141

    move v0, v2

    goto :goto_156

    :goto_155
    move v0, v6

    :goto_156
    packed-switch v0, :pswitch_data_286

    .line 13226
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/net/Uri;->checkContentUriWithoutPermission(Ljava/lang/String;I)V

    goto :goto_164

    .line 13224
    :pswitch_163
    nop

    .line 13231
    :cond_164
    :goto_164
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d2

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_1d2

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 13232
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d2

    if-eqz p1, :cond_1d2

    .line 13233
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object p1

    const-class v0, Landroid/os/storage/StorageManager;

    .line 13234
    invoke-virtual {p1, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    .line 13235
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13236
    nop

    .line 13237
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 13236
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/storage/StorageManager;->translateAppToSystem(Ljava/io/File;II)Ljava/io/File;

    move-result-object p1

    .line 13238
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d2

    .line 13239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Translated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Intent"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13240
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 13245
    :cond_1d2
    invoke-static {}, Landroid/os/StrictMode;->vmUnsafeIntentLaunchEnabled()Z

    move-result p1

    if-eqz p1, :cond_20a

    .line 13246
    iget p1, p0, Landroid/content/Intent;->mLocalFlags:I

    and-int/2addr p1, v7

    if-eqz p1, :cond_1e7

    iget p1, p0, Landroid/content/Intent;->mLocalFlags:I

    and-int/lit8 p1, p1, 0x24

    if-nez p1, :cond_1e7

    .line 13249
    invoke-static {p0}, Landroid/os/StrictMode;->onUnsafeIntentLaunch(Landroid/content/Intent;)V

    goto :goto_20a

    .line 13250
    :cond_1e7
    iget p1, p0, Landroid/content/Intent;->mLocalFlags:I

    and-int/2addr p1, v5

    if-eqz p1, :cond_1f0

    .line 13251
    invoke-static {p0}, Landroid/os/StrictMode;->onUnsafeIntentLaunch(Landroid/content/Intent;)V

    goto :goto_20a

    .line 13252
    :cond_1f0
    iget p1, p0, Landroid/content/Intent;->mLocalFlags:I

    and-int/2addr p1, v4

    if-eqz p1, :cond_20a

    iget-object p1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz p1, :cond_207

    iget-object p1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 13253
    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_207

    iget-object p1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz p1, :cond_20a

    .line 13258
    :cond_207
    invoke-static {p0}, Landroid/os/StrictMode;->onUnsafeIntentLaunch(Landroid/content/Intent;)V

    .line 13262
    :cond_20a
    :goto_20a
    if-eqz p2, :cond_20f

    .line 13263
    invoke-virtual {p0}, Landroid/content/Intent;->collectExtraIntentKeys()V

    .line 13265
    :cond_20f
    return-void

    :sswitch_data_210
    .sparse-switch
        -0x78257653 -> :sswitch_112
        -0x6cb4d57b -> :sswitch_108
        -0x6342a1e0 -> :sswitch_fe
        -0x5a4113c8 -> :sswitch_f4
        -0x4418042d -> :sswitch_e9
        -0x39738481 -> :sswitch_df
        -0x254e496f -> :sswitch_d4
        0xf54386e -> :sswitch_ca
        0x187b165e -> :sswitch_c0
        0x22b70ddb -> :sswitch_b4
        0x32c98ebd -> :sswitch_aa
        0x543610e0 -> :sswitch_9e
        0x5559c83a -> :sswitch_93
        0x5f557da2 -> :sswitch_88
        0x7277a986 -> :sswitch_7c
        0x751aa7fa -> :sswitch_71
        0x79e65f52 -> :sswitch_66
    .end sparse-switch

    :pswitch_data_256
    .packed-switch 0x0
        :pswitch_127
        :pswitch_127
        :pswitch_127
        :pswitch_127
        :pswitch_127
        :pswitch_127
        :pswitch_127
        :pswitch_127
        :pswitch_127
        :pswitch_127
        :pswitch_127
        :pswitch_127
        :pswitch_127
        :pswitch_127
        :pswitch_127
        :pswitch_127
        :pswitch_127
    .end packed-switch

    :sswitch_data_27c
    .sparse-switch
        -0x2265ad8c -> :sswitch_14b
        0x6316690b -> :sswitch_142
    .end sparse-switch

    :pswitch_data_286
    .packed-switch 0x0
        :pswitch_163
        :pswitch_163
    .end packed-switch
.end method

.method public greylist-max-o prepareToLeaveUser(I)V
    .registers 4

    .line 10682
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_7

    .line 10683
    iput p1, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 10685
    :cond_7
    return-void
.end method

.method public whitelist putCharSequenceArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 11051
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 11052
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11054
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 11055
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;B)Landroid/content/Intent;
    .registers 4

    .line 10726
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 10727
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 10729
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 10730
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;C)Landroid/content/Intent;
    .registers 4

    .line 10749
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 10750
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 10752
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    .line 10753
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;D)Landroid/content/Intent;
    .registers 5

    .line 10864
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 10865
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 10867
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 10868
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;F)Landroid/content/Intent;
    .registers 4

    .line 10841
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 10842
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 10844
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 10845
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    .registers 4

    .line 10795
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 10796
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 10798
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10799
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    .registers 5

    .line 10818
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 10819
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 10821
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 10822
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 4

    .line 11327
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 11328
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11330
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 11331
    return-object p0
.end method

.method public greylist putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11355
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 11356
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11358
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 11359
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    .registers 4

    .line 10933
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 10934
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 10936
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 10937
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    .registers 4

    .line 11074
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 11075
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11077
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 11078
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .registers 4

    .line 10910
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 10911
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 10913
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 10914
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 10887
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 10888
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 10890
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10891
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;S)Landroid/content/Intent;
    .registers 4

    .line 10772
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 10773
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 10775
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 10776
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    .registers 4

    .line 10703
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 10704
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 10706
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10707
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    .registers 4

    .line 11120
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 11121
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11123
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 11124
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;[C)Landroid/content/Intent;
    .registers 4

    .line 11166
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 11167
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11169
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    .line 11170
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;[D)Landroid/content/Intent;
    .registers 4

    .line 11258
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 11259
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11261
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 11262
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;[F)Landroid/content/Intent;
    .registers 4

    .line 11235
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 11236
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11238
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 11239
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;[I)Landroid/content/Intent;
    .registers 4

    .line 11189
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 11190
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11192
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 11193
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;[J)Landroid/content/Intent;
    .registers 4

    .line 11212
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 11213
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11215
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 11216
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;
    .registers 4

    .line 10956
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 10957
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 10959
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 10960
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/content/Intent;
    .registers 4

    .line 11304
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 11305
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11307
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 11308
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 11281
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 11282
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11284
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 11285
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;[S)Landroid/content/Intent;
    .registers 4

    .line 11143
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 11144
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11146
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    .line 11147
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;
    .registers 4

    .line 11097
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 11098
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11100
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 11101
    return-object p0
.end method

.method public whitelist putExtras(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 4

    .line 11370
    iget-object v0, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_19

    .line 11371
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_12

    .line 11372
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    goto :goto_19

    .line 11374
    :cond_12
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    iget-object v1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 11382
    :cond_19
    :goto_19
    iget v0, p1, Landroid/content/Intent;->mLocalFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2b

    iget p1, p1, Landroid/content/Intent;->mLocalFlags:I

    and-int/lit8 p1, p1, 0x24

    if-nez p1, :cond_2b

    .line 11386
    iget p1, p0, Landroid/content/Intent;->mLocalFlags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Landroid/content/Intent;->mLocalFlags:I

    .line 11388
    :cond_2b
    return-object p0
.end method

.method public whitelist putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 3

    .line 11403
    invoke-virtual {p1}, Landroid/os/Bundle;->isParcelled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 11404
    iget v0, p0, Landroid/content/Intent;->mLocalFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/content/Intent;->mLocalFlags:I

    .line 11406
    :cond_c
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_17

    .line 11407
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11409
    :cond_17
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 11410
    return-object p0
.end method

.method public whitelist putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 11004
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 11005
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11007
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 11008
    return-object p0
.end method

.method public whitelist putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 10980
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 10981
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 10983
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 10984
    return-object p0
.end method

.method public whitelist putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 11027
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 11028
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11030
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 11031
    return-object p0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .registers 10

    .line 12887
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 12888
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 12889
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 12890
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    .line 12891
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/Intent;->mFlags:I

    .line 12892
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/Intent;->mExtendedFlags:I

    .line 12893
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 12894
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 12896
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_45

    .line 12897
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    .line 12900
    :cond_45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 12901
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez v0, :cond_68

    .line 12902
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 12904
    move v3, v1

    :goto_55
    if-ge v3, v0, :cond_67

    .line 12905
    iget-object v4, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 12904
    add-int/lit8 v3, v3, 0x1

    goto :goto_55

    .line 12907
    :cond_67
    goto :goto_6a

    .line 12908
    :cond_68
    iput-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 12911
    :goto_6a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_77

    .line 12912
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    .line 12915
    :cond_77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_84

    .line 12916
    new-instance v0, Landroid/content/ClipData;

    invoke-direct {v0, p1}, Landroid/content/ClipData;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    .line 12918
    :cond_84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 12919
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 12920
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9d

    .line 12921
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/content/Intent;->mOriginalIntent:Landroid/content/Intent;

    .line 12924
    :cond_9d
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->preventIntentRedirect()Z

    move-result v0

    if-eqz v0, :cond_e9

    .line 12925
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e9

    .line 12926
    new-instance v0, Landroid/content/Intent$CreatorTokenInfo;

    invoke-direct {v0, v2}, Landroid/content/Intent$CreatorTokenInfo;-><init>(Landroid/content/Intent-IA;)V

    iput-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    .line 12927
    iget-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fputmCreatorToken(Landroid/content/Intent$CreatorTokenInfo;Landroid/os/IBinder;)V

    .line 12929
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 12930
    if-lez v0, :cond_e9

    .line 12931
    iget-object v3, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4, v0}, Landroid/util/ArraySet;-><init>(I)V

    invoke-static {v3, v4}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fputmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;Landroid/util/ArraySet;)V

    .line 12932
    nop

    :goto_ca
    if-ge v1, v0, :cond_e9

    .line 12933
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 12934
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v4

    .line 12935
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 12936
    iget-object v6, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    invoke-static {v6}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fgetmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;)Landroid/util/ArraySet;

    move-result-object v6

    new-instance v7, Landroid/content/Intent$NestedIntentKey;

    invoke-direct {v7, v3, v4, v5, v2}, Landroid/content/Intent$NestedIntentKey;-><init>(ILjava/lang/String;ILandroid/content/Intent-IA;)V

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->append(Ljava/lang/Object;)V

    .line 12932
    add-int/lit8 v1, v1, 0x1

    goto :goto_ca

    .line 12942
    :cond_e9
    return-void
.end method

.method public whitelist removeCategory(Ljava/lang/String;)V
    .registers 3

    .line 10591
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_14

    .line 10592
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 10593
    iget-object p1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-nez p1, :cond_14

    .line 10594
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 10597
    :cond_14
    return-void
.end method

.method public blacklist removeCreatorToken()V
    .registers 3

    .line 12519
    iget-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    if-eqz v0, :cond_a

    .line 12520
    iget-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fputmCreatorToken(Landroid/content/Intent$CreatorTokenInfo;Landroid/os/IBinder;)V

    .line 12522
    :cond_a
    return-void
.end method

.method public blacklist removeCreatorTokenInfo()V
    .registers 2

    .line 12514
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    .line 12515
    return-void
.end method

.method public blacklist removeExtendedFlags(I)V
    .registers 3

    .line 11530
    iget v0, p0, Landroid/content/Intent;->mExtendedFlags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Landroid/content/Intent;->mExtendedFlags:I

    .line 11531
    return-void
.end method

.method public whitelist removeExtra(Ljava/lang/String;)V
    .registers 3

    .line 11443
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_14

    .line 11444
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 11445
    iget-object p1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result p1

    if-nez p1, :cond_14

    .line 11446
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11449
    :cond_14
    return-void
.end method

.method public whitelist removeFlags(I)V
    .registers 3

    .line 11517
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Landroid/content/Intent;->mFlags:I

    .line 11518
    return-void
.end method

.method public whitelist removeLaunchSecurityProtection()V
    .registers 2

    .line 12791
    iget v0, p0, Landroid/content/Intent;->mExtendedFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/content/Intent;->mExtendedFlags:I

    .line 12792
    invoke-virtual {p0}, Landroid/content/Intent;->removeCreatorTokenInfo()V

    .line 12793
    return-void
.end method

.method public whitelist replaceExtras(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 3

    .line 11421
    iget-object v0, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_c

    new-instance v0, Landroid/os/Bundle;

    iget-object p1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11422
    return-object p0
.end method

.method public whitelist replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 3

    .line 11433
    if-eqz p1, :cond_8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11434
    return-object p0
.end method

.method public whitelist resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;
    .registers 4

    .line 10255
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_7

    .line 10256
    iget-object p1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-object p1

    .line 10259
    :cond_7
    const/high16 v0, 0x10000

    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    .line 10261
    if-eqz p1, :cond_1f

    .line 10262
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 10267
    :cond_1f
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;
    .registers 4

    .line 10288
    nop

    .line 10289
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_e

    .line 10291
    :try_start_5
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_b} :catch_c

    .line 10294
    goto :goto_1b

    .line 10292
    :catch_c
    move-exception p1

    .line 10294
    goto :goto_1a

    .line 10296
    :cond_e
    const/high16 v0, 0x10000

    or-int/2addr p2, v0

    invoke-virtual {p1, p0, p2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    .line 10298
    if-eqz p1, :cond_1a

    .line 10299
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_1b

    .line 10303
    :cond_1a
    :goto_1a
    const/4 p1, 0x0

    :goto_1b
    return-object p1
.end method

.method public greylist resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;
    .registers 7

    .line 10316
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_7

    .line 10317
    iget-object p1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-object p1

    .line 10320
    :cond_7
    invoke-virtual {p1, p0, p2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 10321
    const/4 p2, 0x0

    if-nez p1, :cond_f

    .line 10322
    return-object p2

    .line 10324
    :cond_f
    nop

    .line 10325
    const/4 v0, 0x0

    :goto_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6a

    .line 10326
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 10327
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_28

    .line 10328
    goto :goto_3a

    .line 10330
    :cond_28
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10332
    if-nez p2, :cond_3d

    .line 10336
    move-object p2, v2

    .line 10325
    :goto_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 10333
    :cond_3d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multiple system services handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10338
    :cond_6a
    return-object p2
.end method

.method public whitelist resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 4

    .line 9368
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 9369
    iget-object p1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    return-object p1

    .line 9371
    :cond_7
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_20

    .line 9372
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 9373
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 9376
    :cond_20
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist resolveType(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 9350
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 4

    .line 9393
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_25

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-eqz v0, :cond_22

    .line 9394
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 9395
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 9396
    :cond_22
    iget-object p1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    return-object p1

    .line 9398
    :cond_25
    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13023
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 13024
    const-string v0, "action"

    iget-object v2, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 13026
    :cond_c
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_1b

    .line 13027
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "data"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 13029
    :cond_1b
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v0, :cond_27

    .line 13030
    const-string/jumbo v0, "type"

    iget-object v2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 13032
    :cond_27
    iget-object v0, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_32

    .line 13033
    const-string v0, "ident"

    iget-object v2, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 13035
    :cond_32
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_41

    .line 13036
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "component"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 13038
    :cond_41
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v0, :cond_4d

    .line 13039
    const-string/jumbo v0, "package"

    iget-object v2, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 13041
    :cond_4d
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "flags"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 13043
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_80

    .line 13044
    const-string v0, "categories"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 13045
    iget-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_6b
    if-ltz v2, :cond_7d

    .line 13046
    iget-object v3, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "category"

    invoke-interface {p1, v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 13045
    add-int/lit8 v2, v2, -0x1

    goto :goto_6b

    .line 13048
    :cond_7d
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 13050
    :cond_80
    return-void
.end method

.method public whitelist setAction(Ljava/lang/String;)Landroid/content/Intent;
    .registers 2

    .line 10353
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    iput-object p1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    .line 10354
    return-object p0
.end method

.method public greylist-max-r setAllowFds(Z)V
    .registers 3

    .line 9508
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    .line 9509
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setAllowFds(Z)Z

    .line 9511
    :cond_9
    return-void
.end method

.method public whitelist setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 11642
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 11643
    return-object p0
.end method

.method public whitelist setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 11603
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 11604
    return-object p0
.end method

.method public whitelist setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 11623
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 11624
    return-object p0
.end method

.method public whitelist setClipData(Landroid/content/ClipData;)V
    .registers 2

    .line 10670
    iput-object p1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    .line 10671
    return-void
.end method

.method public whitelist setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .registers 2

    .line 11582
    iput-object p1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 11583
    return-object p0
.end method

.method public blacklist setCreatorToken(Landroid/os/IBinder;)V
    .registers 4

    .line 12536
    iget-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    if-nez v0, :cond_c

    .line 12537
    new-instance v0, Landroid/content/Intent$CreatorTokenInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/Intent$CreatorTokenInfo;-><init>(Landroid/content/Intent-IA;)V

    iput-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    .line 12539
    :cond_c
    iget-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    invoke-static {v0, p1}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fputmCreatorToken(Landroid/content/Intent$CreatorTokenInfo;Landroid/os/IBinder;)V

    .line 12540
    return-void
.end method

.method public whitelist setData(Landroid/net/Uri;)Landroid/content/Intent;
    .registers 2

    .line 10379
    iput-object p1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 10380
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 10381
    return-object p0
.end method

.method public whitelist setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;
    .registers 2

    .line 10407
    invoke-virtual {p1}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    .line 10496
    iput-object p1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 10497
    iput-object p2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 10498
    return-object p0
.end method

.method public whitelist setDataAndTypeAndNormalize(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    .line 10527
    invoke-virtual {p1}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p2}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o setDefusable(Z)V
    .registers 3

    .line 9515
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    .line 9516
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 9518
    :cond_9
    return-void
.end method

.method public whitelist setExtrasClassLoader(Ljava/lang/ClassLoader;)V
    .registers 3

    .line 9483
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    .line 9484
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 9486
    :cond_9
    return-void
.end method

.method public whitelist setFlags(I)Landroid/content/Intent;
    .registers 2

    .line 11472
    iput p1, p0, Landroid/content/Intent;->mFlags:I

    .line 11473
    return-object p0
.end method

.method public whitelist setIdentifier(Ljava/lang/String;)Landroid/content/Intent;
    .registers 2

    .line 10555
    iput-object p1, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    .line 10556
    return-object p0
.end method

.method public greylist-max-o setLaunchToken(Ljava/lang/String;)V
    .registers 2

    .line 9472
    iput-object p1, p0, Landroid/content/Intent;->mLaunchToken:Ljava/lang/String;

    .line 9473
    return-void
.end method

.method public blacklist setOriginalIntent(Landroid/content/Intent;)V
    .registers 2

    .line 9335
    iput-object p1, p0, Landroid/content/Intent;->mOriginalIntent:Landroid/content/Intent;

    .line 9336
    return-void
.end method

.method public whitelist setPackage(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    .line 11550
    if-eqz p1, :cond_f

    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-nez v0, :cond_7

    goto :goto_f

    .line 11551
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t set package name when selector is already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11554
    :cond_f
    :goto_f
    iput-object p1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 11555
    return-object p0
.end method

.method public whitelist setSelector(Landroid/content/Intent;)V
    .registers 3

    .line 10631
    if-eq p1, p0, :cond_14

    .line 10635
    if-eqz p1, :cond_11

    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-nez v0, :cond_9

    goto :goto_11

    .line 10636
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t set selector when package name is already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10639
    :cond_11
    :goto_11
    iput-object p1, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    .line 10640
    return-void

    .line 10632
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Intent being set as a selector of itself"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setSourceBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 11652
    if-eqz p1, :cond_a

    .line 11653
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    goto :goto_d

    .line 11655
    :cond_a
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    .line 11657
    :goto_d
    return-void
.end method

.method public whitelist setType(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    .line 10436
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 10437
    iput-object p1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 10438
    return-object p0
.end method

.method public whitelist setTypeAndNormalize(Ljava/lang/String;)Landroid/content/Intent;
    .registers 2

    .line 10467
    invoke-static {p1}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-r toInsecureString()Ljava/lang/String;
    .registers 7

    .line 12044
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 12046
    const-string v0, "Intent { "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12047
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 12048
    const-string v0, " }"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12050
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o toShortString(ZZZZ)Ljava/lang/String;
    .registers 11

    .line 12055
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 12056
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 12057
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o toShortString(Ljava/lang/StringBuilder;ZZZZ)V
    .registers 14

    .line 12063
    nop

    .line 12064
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    .line 12065
    const-string v0, "act="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12066
    move v0, v1

    goto :goto_15

    .line 12064
    :cond_14
    move v0, v2

    .line 12068
    :goto_15
    iget-object v3, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    const/16 v4, 0x20

    if-eqz v3, :cond_4a

    .line 12069
    if-nez v0, :cond_20

    .line 12070
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12072
    :cond_20
    nop

    .line 12073
    const-string v0, "cat=["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12074
    move v0, v1

    :goto_27
    iget-object v3, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v0, v3, :cond_44

    .line 12075
    if-lez v0, :cond_36

    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12076
    :cond_36
    iget-object v3, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12074
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 12078
    :cond_44
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 12080
    :cond_4a
    iget-object v3, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v3, :cond_6b

    .line 12081
    if-nez v0, :cond_53

    .line 12082
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12084
    :cond_53
    nop

    .line 12085
    const-string v0, "dat="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12086
    if-eqz p2, :cond_65

    .line 12087
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6a

    .line 12089
    :cond_65
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12092
    :goto_6a
    move v0, v1

    :cond_6b
    iget-object v3, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v3, :cond_82

    .line 12093
    if-nez v0, :cond_74

    .line 12094
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12096
    :cond_74
    nop

    .line 12097
    const-string/jumbo v0, "typ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 12099
    :cond_82
    iget-object v3, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    if-eqz v3, :cond_98

    .line 12100
    if-nez v0, :cond_8b

    .line 12101
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12103
    :cond_8b
    nop

    .line 12104
    const-string v0, "id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 12106
    :cond_98
    iget v3, p0, Landroid/content/Intent;->mFlags:I

    if-eqz v3, :cond_b2

    .line 12107
    if-nez v0, :cond_a1

    .line 12108
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12110
    :cond_a1
    nop

    .line 12111
    const-string v0, "flg=0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/content/Intent;->mFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 12113
    :cond_b2
    iget v3, p0, Landroid/content/Intent;->mExtendedFlags:I

    if-eqz v3, :cond_cd

    .line 12114
    if-nez v0, :cond_bb

    .line 12115
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12117
    :cond_bb
    nop

    .line 12118
    const-string/jumbo v0, "xflg=0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/content/Intent;->mExtendedFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 12120
    :cond_cd
    iget-object v3, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v3, :cond_e4

    .line 12121
    if-nez v0, :cond_d6

    .line 12122
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12124
    :cond_d6
    nop

    .line 12125
    const-string/jumbo v0, "pkg="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 12127
    :cond_e4
    if-eqz p3, :cond_100

    iget-object v3, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_100

    .line 12128
    if-nez v0, :cond_ef

    .line 12129
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12131
    :cond_ef
    nop

    .line 12132
    const-string v0, "cmp="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 12134
    :cond_100
    iget-object v3, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_11a

    .line 12135
    if-nez v0, :cond_109

    .line 12136
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12138
    :cond_109
    nop

    .line 12139
    const-string v0, "bnds="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 12141
    :cond_11a
    iget-object v3, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v3, :cond_13a

    .line 12142
    if-nez v0, :cond_123

    .line 12143
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12145
    :cond_123
    const-string v0, "clip={"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12146
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz p5, :cond_130

    if-eqz p2, :cond_12f

    goto :goto_130

    :cond_12f
    move v2, v1

    :cond_130
    :goto_130
    invoke-virtual {v0, p1, v2}, Landroid/content/ClipData;->toShortString(Ljava/lang/StringBuilder;Z)V

    .line 12147
    nop

    .line 12148
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 12150
    :cond_13a
    if-eqz p4, :cond_14c

    iget-object v2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_14c

    .line 12151
    if-nez v0, :cond_145

    .line 12152
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12154
    :cond_145
    nop

    .line 12155
    const-string v0, "(has extras)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14d

    .line 12157
    :cond_14c
    move v1, v0

    :goto_14d
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    const/4 v2, -0x2

    if-eq v0, v2, :cond_164

    .line 12158
    if-nez v1, :cond_157

    .line 12159
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12161
    :cond_157
    nop

    .line 12162
    const-string/jumbo v0, "u="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/Intent;->mContentUserHint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12164
    :cond_164
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    const-string/jumbo v1, "}"

    if-eqz v0, :cond_17d

    .line 12165
    const-string v0, " sel="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12166
    iget-object v2, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 12167
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12169
    :cond_17d
    iget-object v0, p0, Landroid/content/Intent;->mOriginalIntent:Landroid/content/Intent;

    if-eqz v0, :cond_18f

    .line 12170
    const-string v0, " org={"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12171
    iget-object v0, p0, Landroid/content/Intent;->mOriginalIntent:Landroid/content/Intent;

    move-object p0, v0

    invoke-virtual/range {p0 .. p5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 12172
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12174
    :cond_18f
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 12029
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 12030
    invoke-virtual {p0, v0}, Landroid/content/Intent;->toString(Ljava/lang/StringBuilder;)V

    .line 12031
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toString(Ljava/lang/StringBuilder;)V
    .registers 9

    .line 12036
    const-string v0, "Intent { "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12037
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 12038
    const-string p1, " }"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12039
    return-void
.end method

.method public whitelist toURI()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12252
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist toUri(I)Ljava/lang/String;
    .registers 12

    .line 12271
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 12272
    and-int/lit8 v0, p1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_b2

    .line 12273
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v0, :cond_98

    .line 12278
    const-string v0, "android-app://"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12279
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12280
    nop

    .line 12281
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_83

    .line 12286
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/net/Uri;->encodeIfNotEncoded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12287
    if-eqz v0, :cond_82

    .line 12288
    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12289
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12290
    iget-object v4, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/net/Uri;->encodeIfNotEncoded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 12291
    if-eqz v4, :cond_82

    .line 12292
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12293
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12296
    iget-object v3, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-static {v3, v4}, Landroid/net/Uri;->encodeIfNotEncoded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 12297
    if-eqz v3, :cond_5a

    .line 12298
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12300
    :cond_5a
    iget-object v3, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/net/Uri;->encodeIfNotEncoded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 12301
    if-eqz v3, :cond_6e

    .line 12302
    const/16 v4, 0x3f

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12303
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12305
    :cond_6e
    iget-object v3, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/net/Uri;->encodeIfNotEncoded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12306
    if-eqz v2, :cond_82

    .line 12307
    const/16 v3, 0x23

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12308
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12313
    :cond_82
    move-object v2, v0

    :cond_83
    if-nez v2, :cond_88

    const-string v0, "android.intent.action.MAIN"

    goto :goto_8a

    :cond_88
    const-string v0, "android.intent.action.VIEW"

    :goto_8a
    move-object v3, v0

    iget-object v4, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    const/4 v2, 0x0

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/content/Intent;->toUriFragment(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12315
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 12274
    :cond_98
    move-object v0, p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent must include an explicit package name to build an android-app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12317
    :cond_b2
    move-object v0, p0

    move v5, p1

    .line 12318
    iget-object p1, v0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    const-string v3, "intent:"

    if-eqz p1, :cond_110

    .line 12319
    iget-object p1, v0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12320
    and-int/lit8 v4, v5, 0x1

    if-eqz v4, :cond_10c

    .line 12321
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 12322
    const/4 v6, 0x0

    move v7, v6

    :goto_ca
    if-ge v7, v4, :cond_10c

    .line 12323
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 12324
    const/16 v9, 0x61

    if-lt v8, v9, :cond_d8

    const/16 v9, 0x7a

    if-le v8, v9, :cond_109

    :cond_d8
    const/16 v9, 0x41

    if-lt v8, v9, :cond_e0

    const/16 v9, 0x5a

    if-le v8, v9, :cond_109

    :cond_e0
    const/16 v9, 0x30

    if-lt v8, v9, :cond_e8

    const/16 v9, 0x39

    if-le v8, v9, :cond_109

    :cond_e8
    const/16 v9, 0x2e

    if-eq v8, v9, :cond_109

    const/16 v9, 0x2d

    if-eq v8, v9, :cond_109

    const/16 v9, 0x2b

    if-ne v8, v9, :cond_f5

    .line 12326
    goto :goto_109

    .line 12328
    :cond_f5
    const/16 v4, 0x3a

    if-ne v8, v4, :cond_10c

    if-lez v7, :cond_10c

    .line 12330
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 12331
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12332
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 12333
    goto :goto_10c

    .line 12322
    :cond_109
    :goto_109
    add-int/lit8 v7, v7, 0x1

    goto :goto_ca

    .line 12340
    :cond_10c
    :goto_10c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12342
    :cond_10f
    goto :goto_117

    :cond_110
    and-int/lit8 p1, v5, 0x1

    if-eqz p1, :cond_10f

    .line 12343
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12346
    :goto_117
    const-string v3, "android.intent.action.VIEW"

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/content/Intent;->toUriFragment(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12348
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    .line 12796
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 12797
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 12798
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 12799
    iget-object v0, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 12800
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12801
    iget v0, p0, Landroid/content/Intent;->mExtendedFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12802
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 12803
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 12805
    iget-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_37

    .line 12806
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12807
    iget-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3a

    .line 12809
    :cond_37
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12812
    :goto_3a
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_59

    .line 12813
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 12814
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12815
    move v3, v2

    :goto_48
    if-ge v3, v0, :cond_58

    .line 12816
    iget-object v4, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 12815
    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    .line 12818
    :cond_58
    goto :goto_5c

    .line 12819
    :cond_59
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12822
    :goto_5c
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v0, :cond_69

    .line 12823
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12824
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6c

    .line 12826
    :cond_69
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12829
    :goto_6c
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_79

    .line 12830
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12831
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0, p1, p2}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7c

    .line 12833
    :cond_79
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12835
    :goto_7c
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12836
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 12838
    iget-object v0, p0, Landroid/content/Intent;->mOriginalIntent:Landroid/content/Intent;

    if-eqz v0, :cond_93

    .line 12839
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12840
    iget-object v0, p0, Landroid/content/Intent;->mOriginalIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_96

    .line 12842
    :cond_93
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12845
    :goto_96
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->preventIntentRedirect()Z

    move-result p2

    if-eqz p2, :cond_f0

    .line 12846
    iget-object p2, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    if-nez p2, :cond_a4

    .line 12847
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f0

    .line 12849
    :cond_a4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12850
    iget-object p2, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    invoke-static {p2}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fgetmCreatorToken(Landroid/content/Intent$CreatorTokenInfo;)Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 12852
    iget-object p2, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    invoke-static {p2}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fgetmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;)Landroid/util/ArraySet;

    move-result-object p2

    if-eqz p2, :cond_ed

    .line 12853
    iget-object p2, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    invoke-static {p2}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fgetmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;)Landroid/util/ArraySet;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    .line 12854
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12855
    nop

    :goto_c6
    if-ge v2, p2, :cond_ec

    .line 12856
    iget-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    invoke-static {v0}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fgetmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent$NestedIntentKey;

    .line 12857
    invoke-static {v0}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmType(Landroid/content/Intent$NestedIntentKey;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12858
    invoke-static {v0}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmKey(Landroid/content/Intent$NestedIntentKey;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 12859
    invoke-static {v0}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmIndex(Landroid/content/Intent$NestedIntentKey;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12855
    add-int/lit8 v2, v2, 0x1

    goto :goto_c6

    .line 12861
    :cond_ec
    goto :goto_f0

    .line 12862
    :cond_ed
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12866
    :cond_f0
    :goto_f0
    return-void
.end method
